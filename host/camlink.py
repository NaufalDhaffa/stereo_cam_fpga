"""Decoding of the USB stream produced by the two-camera FPGA design.

Two layers (see rtl/cam_mux.v and rtl/cam_capture.v):

1. Chunks of exactly 512 bytes: 0xA5, camera number, payload length (LE16),
   up to 508 payload bytes, zero padding. The fixed size is what lets a
   receiver that starts in the middle of the stream find the boundaries.
2. Per camera, the chunk payloads form a byte stream of frames: a 24-byte
   header followed by the pixel bytes. The header describes the PREVIOUS
   frame, so a frame is validated when the next header arrives.
"""
import struct

import numpy as np

CHUNK = 512
PAYLOAD = CHUNK - 4
CHUNK_MAGIC = 0xA5

MAGIC = b"\xAA\x55\xF0\x0FCAM0"
HDR_LEN = 32


def parse_header(buf, pos):
    frame_no, bpl, lines, pclk, ticks, flags = struct.unpack_from("<HHHHHB", buf, pos + 8)
    start_us, tof_mm, tof_seq, _, tof_us = struct.unpack_from("<IHBBI", buf, pos + 20)
    return dict(frame_no=frame_no, bpl=bpl, lines=lines, pclk_mhz=pclk * 0.002,
                frame_ms=ticks * 0.5, truncated=bool(flags & 1), start_us=start_us,
                tof_mm=None if tof_mm == 0xFFFF else tof_mm, tof_seq=tof_seq, tof_us=tof_us)


def rgb565_to_rgb(payload, width, height, little_endian=False):
    raw = np.frombuffer(payload, dtype="<u2" if little_endian else ">u2",
                        count=width * height).reshape(height, width)
    r = ((raw >> 11) & 0x1F).astype(np.uint8)
    g = ((raw >> 5) & 0x3F).astype(np.uint8)
    b = (raw & 0x1F).astype(np.uint8)
    return np.dstack(((r << 3) | (r >> 2), (g << 2) | (g >> 4), (b << 3) | (b >> 2)))


class ChunkDemux:
    """Splits the raw USB bytes into per-camera byte strings."""

    SYNC_CHUNKS = 6

    def __init__(self):
        self.buf = bytearray()
        self.synced = False
        self.resyncs = 0

    @staticmethod
    def _valid(arr):
        length = arr[:, 2].astype(np.uint16) | (arr[:, 3].astype(np.uint16) << 8)
        ok = (arr[:, 0] == CHUNK_MAGIC) & (arr[:, 1] <= 2) & (length >= 1) & (length <= PAYLOAD)
        return ok, length

    def _find_sync(self):
        need = (self.SYNC_CHUNKS + 1) * CHUNK
        while len(self.buf) >= need:
            a = np.frombuffer(bytes(self.buf[:need]), dtype=np.uint8)
            for off in np.nonzero(a[:CHUNK] == CHUNK_MAGIC)[0]:
                rows = a[off:off + self.SYNC_CHUNKS * CHUNK].reshape(self.SYNC_CHUNKS, CHUNK)
                if self._valid(rows)[0].all():
                    del self.buf[:off]
                    self.synced = True
                    return
            del self.buf[:CHUNK]

    def feed(self, data):
        """Returns {camera: bytes} for the chunks completed by `data`."""
        self.buf += data
        out = {}
        if not self.synced:
            self._find_sync()
            if not self.synced:
                return out
        m = len(self.buf) // CHUNK
        if m == 0:
            return out
        arr = np.frombuffer(bytes(self.buf[:m * CHUNK]), dtype=np.uint8).reshape(m, CHUNK)
        ok, length = self._valid(arr)
        if not ok.all():
            # keep what is good, then look for the boundary again
            m = int(np.argmin(ok))
            arr, length = arr[:m], length[:m]
            self.synced = False
            self.resyncs += 1
        for cam in (0, 1, 2):                 # 2 = the depth build's disparity stream
            rows = np.nonzero(arr[:, 1] == cam)[0]
            if not len(rows):
                continue
            if (length[rows] == PAYLOAD).all():
                out[cam] = arr[rows, 4:].tobytes()
            else:
                out[cam] = b"".join(arr[r, 4:4 + length[r]].tobytes() for r in rows)
        del self.buf[:max(m, 0) * CHUNK + (0 if self.synced else 1)]
        return out


class FrameSplitter:
    """Cuts one camera's byte stream into validated frames."""

    def __init__(self):
        self.buf = bytearray()
        self.dropped = 0
        self.shape = None

    def feed(self, data):
        """Returns a list of (payload, info) for every complete, intact frame."""
        self.buf += data
        frames = []
        while True:
            start = self.buf.find(MAGIC)
            if start < 0:
                del self.buf[:-len(MAGIC)]
                break
            nxt = self.buf.find(MAGIC, start + HDR_LEN)
            if nxt < 0 or nxt + HDR_LEN > len(self.buf):
                del self.buf[:start]
                break
            # Size and timing of this frame are in the NEXT header; its own
            # header says when it started.
            info = parse_header(self.buf, nxt)
            own = parse_header(self.buf, start)
            info.update({k: own[k] for k in ("frame_no", "start_us", "tof_mm", "tof_seq", "tof_us")})
            payload = bytes(self.buf[start + HDR_LEN:nxt])
            del self.buf[:nxt]
            size = info["bpl"] * info["lines"]
            # A glitch on VSYNC splits a frame into two short ones that are
            # each self-consistent; only accept a size seen twice in a row.
            shape = (info["bpl"], info["lines"])
            repeated = shape == self.shape
            self.shape = shape
            if size == 0 or len(payload) != size or info["truncated"] or not repeated:
                self.dropped += 1
                info["got"] = len(payload)
                frames.append((None, info))
            else:
                frames.append((payload, info))
        return frames


class CamLink:
    """USB bytes in, (camera, payload or None, info) out."""

    def __init__(self):
        self.demux = ChunkDemux()
        self.cams = {0: FrameSplitter(), 1: FrameSplitter(), 2: FrameSplitter()}

    def feed(self, data):
        out = []
        for cam, stream in self.demux.feed(data).items():
            for payload, info in self.cams[cam].feed(stream):
                out.append((cam, payload, info))
        return out

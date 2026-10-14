"""Vitis workspace of the stereo depth camera: a platform from the Vivado project's XSA
and the bare-metal application sw/apps/stereo_cam on it.

    vitis -s sw/scripts/create_workspace.py [slices, default 2]

Makes sw/workspace_<N>slice/ (open it with "vitis -w sw/workspace_<N>slice"):

    ebaz4205_stereo     platform: hw/export/stereo_<N>slice/stereo_<N>slice.xsa, standalone
                        domain on ps7_cortexa9_0, first-stage boot loader
    stereo_cam          application: configures both OV2640, starts the stream, keeps the
                        cameras in step (sources imported from sw/apps/stereo_cam/src)
"""
import os
import shutil
import sys

import vitis

ROOT = os.path.normpath(os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", ".."))
SLICES = int(sys.argv[1]) if len(sys.argv) > 1 else 2
NAME = f"stereo_{SLICES}slice"
XSA = os.path.join(ROOT, "hw", "export", NAME, NAME + ".xsa")
WS = os.path.join(ROOT, "sw", f"workspace_{SLICES}slice")
SRC = os.path.join(ROOT, "sw", "apps", "stereo_cam", "src")
PLATFORM, APP, DOMAIN = "ebaz4205_stereo", "stereo_cam", "standalone_ps7_cortexa9_0"


def main():
    if not os.path.exists(XSA):
        raise SystemExit(XSA + " not found: build the Vivado project first (hw/scripts/create_project.tcl)")
    shutil.rmtree(WS, ignore_errors=True)
    os.makedirs(WS)
    client = vitis.create_client()
    client.set_workspace(path=WS)

    platform = client.create_platform_component(name=PLATFORM, hw_design=XSA, os="standalone", cpu="ps7_cortexa9_0",
                                                domain_name=DOMAIN)
    platform.build()
    xpfm = client.find_platform_in_repos(PLATFORM)

    app = client.create_app_component(name=APP, platform=xpfm, domain=DOMAIN, template="empty_application")
    app.import_files(from_loc=SRC, files=sorted(f for f in os.listdir(SRC) if f.endswith((".c", ".h"))),
                     dest_dir_in_cmp="src")
    app.set_app_config(key="USER_COMPILE_DEFINITIONS", values=[f"STEREO_SLICES={SLICES}"])
    app.build()
    vitis.dispose()
    elf = os.path.join(WS, APP, "build", APP + ".elf")
    if not os.path.exists(elf):
        raise SystemExit("the application did not build: see the compiler's messages above")
    print("WORKSPACE_OK:", WS)


if __name__ == "__main__":
    main()

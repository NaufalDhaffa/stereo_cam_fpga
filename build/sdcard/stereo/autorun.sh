#!/bin/sh
# Started at boot from the SD card (by the stereo-autorun service of the image):
# network, the bitstream chosen over ssh (if any), then the camera program.
D="$(cd "$(dirname "$0")" && pwd)"
ADDRESS=192.168.2.10/24; GATEWAY=; SPEED=100
[ -f "$D/network.conf" ] && . "$D/network.conf"
# the interface name depends on the image (eth0, or enx<MAC> when udev renames it)
IF=$(ls /sys/class/net | grep -E "^(eth|en)" | head -n 1)
ip link set "$IF" up
if [ "$ADDRESS" = "dhcp" ]; then
    (udhcpc -i "$IF" -b >/dev/null 2>&1 &)
else
    ip addr add "$ADDRESS" dev "$IF" 2>/dev/null
    [ -n "$GATEWAY" ] && ip route add default via "$GATEWAY" 2>/dev/null
fi
[ -n "$SPEED" ] && ethtool -s "$IF" speed "$SPEED" duplex full autoneg off 2>/dev/null
if [ -f "$D/bitstream/default.bit.bin" ]; then
    sh "$D/fpga.sh" boot
else
    sh "$D/fpga.sh" start
fi

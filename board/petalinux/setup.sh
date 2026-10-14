#!/bin/bash
# Creates / updates the PetaLinux project for the stereo camera board in WSL and builds the
# SD card files. Run inside WSL:
#
#   bash /mnt/d/stereo-depth-cam/board/petalinux/setup.sh [step]
#
# step: all (default) | create | config | build | package | help
#
# Result: ~/petalinux/projects/ebaz_stereo/images/linux/{BOOT.BIN,boot.scr,image.ub},
# copied to build/sdcard/ of the Windows project together with the stereo/ folder.
WIN=/mnt/d/stereo-depth-cam
HERE="$WIN/board/petalinux"
XSA="$WIN/build/mini/stereo.xsa"
PROJ=~/petalinux/projects/ebaz_stereo
STEP="${1:-all}"
set --                                   # settings.sh would take this script's argument as its own
source ~/petalinux/2025.2/settings.sh >/dev/null 2>&1
set -e

if [ "$STEP" = help ]; then
    petalinux-create --help 2>&1 | head -40
    petalinux-package boot --help 2>&1 | head -40
    exit 0
fi

if [ "$STEP" = all ] || [ "$STEP" = create ]; then
    mkdir -p ~/petalinux/projects
    cd ~/petalinux/projects
    if [ ! -d ebaz_stereo ]; then
        petalinux-create project --template zynq --name ebaz_stereo
    fi
fi

if [ "$STEP" = all ] || [ "$STEP" = config ]; then
    cd "$PROJ"
    cp "$XSA" ./stereo.xsa
    petalinux-config --get-hw-description ./stereo.xsa --silentconfig
    # device tree additions, the autorun recipe, the packages the board scripts need
    cp "$HERE/system-user.dtsi" project-spec/meta-user/recipes-bsp/device-tree/files/system-user.dtsi
    mkdir -p project-spec/meta-user/recipes-apps/stereo-autorun/files
    cp "$HERE/stereo-autorun.bb" project-spec/meta-user/recipes-apps/stereo-autorun/
    cp "$HERE"/files/* project-spec/meta-user/recipes-apps/stereo-autorun/files/
    conf=project-spec/meta-user/conf/petalinuxbsp.conf
    sed -i '/# stereo-begin/,/# stereo-end/d' "$conf"
    cat >> "$conf" <<'EOF'
# stereo-begin
IMAGE_INSTALL:append = " stereo-autorun python3-core python3-mmap python3-io ethtool openssh-sftp-server"
# a development board on a private cable: root logs in without a password
EXTRA_IMAGE_FEATURES += "allow-empty-password allow-root-login empty-root-password"
# stereo-end
EOF
    sed -i 's/^CONFIG_SUBSYSTEM_HOSTNAME=.*/CONFIG_SUBSYSTEM_HOSTNAME="ebaz-stereo"/' project-spec/configs/config
    petalinux-config --silentconfig
    grep -E "CONFIG_SUBSYSTEM_ROOTFS_[A-Z]*=y|CONFIG_SUBSYSTEM_HOSTNAME|CONFIG_SUBSYSTEM_INITRAMFS_IMAGE_NAME|CONFIG_SUBSYSTEM_SERIAL_PS7|CONFIG_SUBSYSTEM_ETHERNET_[A-Z0-9_]*SELECT=y" project-spec/configs/config
fi

if [ "$STEP" = all ] || [ "$STEP" = build ]; then
    cd "$PROJ"
    # Ubuntu 24.04 has no libtinfo.so.5, which xsct (used by this PetaLinux flow) needs and
    # the build checks for. xsct ships one; make it visible to xsct itself (a link in its own
    # library folder) and to the check (the host gcc's search path). No system files change.
    xl=~/petalinux/2025.2/components/xsct/lib/lnx64.o
    [ -e "$xl/libtinfo.so.5" ] || ln -s "$xl/SuSE/libtinfo.so.5" "$xl/libtinfo.so.5"
    export LIBRARY_PATH="$xl"
    export BB_ENV_PASSTHROUGH_ADDITIONS="$BB_ENV_PASSTHROUGH_ADDITIONS LIBRARY_PATH"
    petalinux-build
fi

if [ "$STEP" = all ] || [ "$STEP" = package ]; then
    cd "$PROJ"
    petalinux-package boot --force --fsbl images/linux/zynq_fsbl.elf --fpga images/linux/system.bit --u-boot
    out="$WIN/build/sdcard"
    mkdir -p "$out/stereo/bitstream"
    cp images/linux/BOOT.BIN images/linux/boot.scr images/linux/image.ub "$out/"
    cp "$WIN"/board/{stereo_cam.py,stereo.conf,network.conf,autorun.sh,fpga.sh} "$out/stereo/"
    cp "$WIN/sensor/ov2640_tables.tcl" "$out/stereo/"
    ls -la "$out" "$out/stereo"
    echo "SDCARD_OK"
fi

SUMMARY = "Runs stereo/autorun.sh from the SD card at boot"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
SRC_URI = "file://stereo-autorun.sh file://stereo-autorun.service file://stereo-autorun.init"
S = "${WORKDIR}"

inherit systemd update-rc.d
SYSTEMD_SERVICE:${PN} = "stereo-autorun.service"
INITSCRIPT_NAME = "stereo-autorun"
INITSCRIPT_PARAMS = "start 99 5 ."

do_install() {
    install -d ${D}${bindir} ${D}${systemd_system_unitdir} ${D}${sysconfdir}/init.d
    install -m 0755 ${WORKDIR}/stereo-autorun.sh ${D}${bindir}/stereo-autorun.sh
    install -m 0644 ${WORKDIR}/stereo-autorun.service ${D}${systemd_system_unitdir}/stereo-autorun.service
    install -m 0755 ${WORKDIR}/stereo-autorun.init ${D}${sysconfdir}/init.d/stereo-autorun
}
FILES:${PN} += "${systemd_system_unitdir}/stereo-autorun.service"

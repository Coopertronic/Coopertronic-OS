#!/bin/bash
if [ "$EUID" -ne 0 ]; then
    echo "You need to run as ROOT, dummy!!!"
    exit
fi
// Make default locations
STARTUP="~/ISO_Build"
IMG_LOC="~/ISO_Dump"
INSTRUCTIONS="~/Coopertronic_OS/releng/"
ISO_STORE="/home/matt/ISO_Store/Coopertronic_OS"
LOCAL_MOUNT="/home/matt/WWW_Local/"
echo "Compiling the ISO image. Please wait …"
mkarchiso -v -w ${STARTUP} -o ${IMG_LOC} ${INSTRUCTIONS}

echo "Connecting to network drive. Please wait …"
if !( sshfs matt@coopertronic.ddns.net:${ISO_STORE} ${LOCAL_MOUNT} ); then
    echo "Mounting failed!!"
    echo "Please check network connections."
    echo "Unable to copy image to host."
    echo "Please find the ISO image in the local ISO_Dump folder."
    exit 1
else
    exit 0
fi

#!/bin/bash
if [ "$EUID" -ne 0 ]; then
    echo "You need to run as ROOT, dummy!!!"
    exit
fi
## Make default locations.
STARTUP="/home/matt/ISO_Build"
IMG_LOC="/home/matt/ISO_Dump"
INSTRUCTIONS="releng/"
ISO_STORE="/home/matt/ISO_Store/Coopertronic_OS"
LOCAL_MOUNT="/home/matt/WWW_Local/"

rm -rf ${STARTUP}

## Compile the ISO image using the ArchISO package.
echo "Compiling the ISO image. Please wait …"
mkarchiso -v -w ${STARTUP} -o ${IMG_LOC} ${INSTRUCTIONS}

## Connect to the remote folder via SSHFS and copy the new ISO to it.
echo "Connecting to network drive. Please wait …"
### Test that the remote folder can be connected to or NOT
if !( sshfs matt@coopertronic.ddns.net:${ISO_STORE} ${LOCAL_MOUNT} ); then
    echo "Mounting failed!!"
    echo "Please check network connections."
    echo "Unable to copy image to host."
    echo "Please find the ISO image in the local ISO_Dump folder."
    exit 1
else
    echo "Attempting to Copying the new ISO to the remote folder."
    DUMP_DIR=${IMG_LOC}
    REMOTE_DIR=${LOCAL_MOUNT}
    FILE_EXT="iso"
    ## find the newest ISO file in the directory
    NEW_ISO=$(ls -tr1d "${DUMP_DIR}/"*.${FILE_EXT} 2>/dev/null | tail -1)
    ## CHeck if file exists in the ISO_Dump folder
    if [ -z "${NEW_ISO}" ]; then
        echo "No file to copy"
        exit 1
    elif [ -d "${NEW_ISO}" ]; then
        echo "The newest entry is a directory."
        echo "Please examine your build instructions."
        exit 1
    else
        echo "Copying ${NEW_ISO}"
        cp -p "${NEW_ISO}" "${REMOTE_DIR}"
    fi
    exit 0
fi

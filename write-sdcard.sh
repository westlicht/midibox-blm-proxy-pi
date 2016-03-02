#!/bin/sh

if [ $# -eq 0 ]; then
    echo "Usage: write-sdcard.sh /dev/sdX"
    exit
fi

SRC="buildroot/output/images/sdcard.img"
DST="$1"

echo "Writing ${SRC} to ${DST} ..."

sudo dd if=${SRC} of=${DST} conv=fdatasync

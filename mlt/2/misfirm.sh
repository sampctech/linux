#!/bin/bash
set -e
#############################################
# Author  : Sam Barna
#############################################

echo "########################################"
echo "### Check & install Missing Firmware ###"
echo "########################################"

"$HOME"/mlt/AUR./add-aic94xx-firmware-v1.sh

"$HOME"/mlt/AUR./add-wd719x-firmware-v1.sh

exit

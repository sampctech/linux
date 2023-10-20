#!/bin/bash
#set -e
#####################################################################
# Author  : Sam Barna
#####################################################################
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#####################################################################

latestversion="$(pacman -Q glibc)"

echo "Before proceeding, lets make sure glibc is version 2.31 or newer"
echo "The currently installed version is:"$latestversion""
if [[ $latestversion ]]
then
  echo "Continuing."
else
  echo "Latest version and is not installed yet. Updating."
  sudo pacman -S --noconfirm --needed glibc
fi
exit

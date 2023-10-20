#!/bin/bash
#set -e
#####################################################################
# Author  : Sam Barna
#####################################################################
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#####################################################################
#
# dependencies first for lutris
# More documentation can be found at
#https://github.com/Tk-Glitch/PKGBUILDS/releases
#Note: Proton-tkg 5.3.r0.gdeeaa04a standalone package:
#Uncompress to ~/.steam/root/compatibilitytools.d

echo "Before proceeding, lets make sure glibc is version 2.31 or newer"
echo "The currently installed version is:"(latestversion)""
latestversion="$(pacman -Q glibc)"

#pacman -Q glibc
echo "Is it >/=?" [y/n]
read input
#  if [[ "$input" == "n" ]] || [[ "$input" == "no" ]];then
  if [[ "$version" == "<" ]];then
    exit
#  elif [[ "$input" == "y" ]] || [[ "$input" == "yes" ]]; then
elif [[ "$version" == ">=" ]];then
    cd ~/1/lutris
    mkdir dls
fi
cd ~/1/lutris/dls

wget https://github.com/Tk-Glitch/PKGBUILDS/releases/download/5.3.r0.gdeeaa04a/wine-tkg-staging-fsync-vkd3d-git-5.3.r0.gdeeaa04a-246-x86_64.pkg.tar.zst

sudo pacman -U "$latestverion".pkg.tar.zst

sudo pacman -S --noconfirm --needed p7zip

wget https://github.com/Tk-Glitch/PKGBUILDS/releases/download/5.3.r0.gdeeaa04a/proton_tkg_5.3.r0.gdeeaa04a.release.zip

7z x -o/home/$USER/.steam/root/compatibilitytools.d/tkg-5.3.r0 proton_tkg_5.3.r0.gdeeaa04a.release.zip

exit

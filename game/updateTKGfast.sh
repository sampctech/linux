#!/usr/bin/env bash
baseuri="https://github.com/Tk-Glitch/PKGBUILDS/releases/download"
latesturi="https://api.github.com/repos/Tk-Glitch/PKGBUILDS/releases/latest"
dstpath="$HOME/.steam/root/compatibilitytools.d/"$version""

  latestversion="$(curl -s $latesturi | egrep -m1 "tag_name" | cut -d \" -f4)"
  if [[ -d $dstpath/tkg-$latestversion ]]
  then
    echo "Proton-tkg $latestversion is the latest version and is already installed."
    echo "Exiting..."
    exit 0
  else
    echo "Proton-tkg $latestversion is the latest version and is not installed yet."
    echo "Installing Proton-tkg $latestverion"
    url=$(curl -s -S $latesturi | egrep -m1 "browser_download_url.*proton")
    #url=$(curl -s -S $latesturi | egrep -m1 "browser_download_url.*proton" | cut -d \" -f4)
  fi

rsp="$(curl -sI "$url" | head -1)"
echo "$rsp" | grep -q 302 || {
  echo "$rsp"
  exit 1
}

[ -d "$dstpath" ] || {
    mkdir "$dstpath"
    echo [Info] Created "$dstpath"
}

#curl -sL "$url" | tar xfzv - -C "$dstpath"
#curl -sL "$url" | 7z x -o"$dstpath" "$filename"
curl -sL "$url" | 7z x -o"$dstpath" "$latestverion"
#curl -sL "$url" | 7z x -o"$dstpath" proton_tkg_5.3.r0.gdeeaa04a.release.zip
#7z x -o/home/$USER/.steam/root/compatibilitytools.d/tkg-5.3.r0 proton_tkg_5.3.r0.gdeeaa04a.release.zip



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
echo "The currently installed version is:(pacman -Q glibc)"

#pacman -Q glibc
echo "Is it >/=?" [y/n]
read input
  if [[ "$input" == "n" ]] || [[ "$input" == "no" ]];then
    exit
  elif [[ "$input" == "y" ]] || [[ "$input" == "yes" ]]; then
    cd ~/1/lutris
    mkdir dls
fi

latestversion="$(curl -s $latesturi | egrep -m1 "tag_name" | cut -d \" -f4)"
if [[ -d $dstpath/Proton-$latestversion ]]
then
  echo "Proton $latestversion is the latest version and is already installed."
  echo "Exiting..."
  exit 0
else
  echo "Proton $latestversion is the latest version and is not installed yet."
  echo "Installing Proton $latestverion"
  url=$(curl -s $latesturi | egrep -m1 "browser_download_url.*Proton" | cut -d \" -f4)
fi


cd ~/1/lutris/dls

latesturi="https://api.github.com/repos/Tk-Glitch/PKGBUILDS/releases/latest"
latestversion="$(curl -s $latesturi | egrep -m1 "tag_name" | cut -d \" -f4)"

wget https://github.com/Tk-Glitch/PKGBUILDS/releases/download/"$latestverion"
#wget https://github.com/Tk-Glitch/PKGBUILDS/releases/download/5.3.r0.gdeeaa04a/wine-tkg-staging-fsync-vkd3d-git-5.3.r0.gdeeaa04a-246-x86_64.pkg.tar.zst

sudo pacman -U "$latestverion".pkg.tar.zst

sudo pacman -S --noconfirm --needed p7zip

wget https://github.com/Tk-Glitch/PKGBUILDS/releases/download/"$latestverion"
#wget https://github.com/Tk-Glitch/PKGBUILDS/releases/download/5.3.r0.gdeeaa04a/proton_tkg_5.3.r0.gdeeaa04a.release.zip

7z x -o/home/$USER/.steam/root/compatibilitytools.d/"$latestverion".release.zip
#7z x -o/home/$USER/.steam/root/compatibilitytools.d/tkg-5.3.r0 proton_tkg_5.3.r0.gdeeaa04a.release.zip

exit

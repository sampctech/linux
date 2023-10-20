#!/bin/bash
set -e
#####################################################################
# Author  : Sam Barna
#####################################################################
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#####################################################################
echo "#########################################################################"
echo "You should consider updating the mirrorlist to provide fastest update"
echo "& install times after initial setup & OS installation."
echo "#########################################################################"

echo "Would you like to update pacman? [y,n]"
read input
if [[ "$input" == "n" ]] || [[ "$input" == "no" ]]; then
  echo "No. Ok. Maybe later"
  exit
else [[ "$input" == "y" ]] || [[ "$input" == "yes" ]];
  echo "Yes"
fi
echo "Do you want to update the mirrorlist first?" [y/n]
read input
  if [[ "$input" == "n" ]] || [[ "$input" == "no" ]]; then
    echo "No"
    echo "Do you want to update including AUR?" [y/n]
    read input
    if [[ "$input" == "n" ]] || [[ "$input" == "no" ]]; then
      sudo pacman -Syyu --noconfirm
      exit
    elif [[ "$input" == "y" ]] || [[ "$input" == "yes" ]]; then
      sudo pacman -Syyu --noconfirm
      yay -Syu --noconfirm
    fi
  elif [[ "$input" == "y" ]] || [[ "$input" == "yes" ]]; then
    echo "Do you want to update including AUR?" [y/n]
    read input
    if [[ "$input" == "n" ]] || [[ "$input" == "no" ]]; then
      sudo pacman -S reflector --noconfirm
      sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist
      sudo pacman -Syyu --noconfirm
      exit
    elif [[ "$input" == "y" ]] || [[ "$input" == "yes" ]]; then
      sudo pacman -S reflector --noconfirm
      sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist
      sudo pacman -Syyu --noconfirm
      yay -Syu --noconfirm
      exit
    fi
fi

echo "#########################################################################"
echo "####                 Up to date! Time for a desktop!                 ####"
echo "#########################################################################"

#sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist

#sudo pacman -Syyu --noconfirm

#yay -Syu --noconfirm

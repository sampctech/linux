#!/bin/bash
#set -e
#####################################################################
# Author  : Sam Barna
#####################################################################
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#####################################################################
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
      sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist
      sudo pacman -Syyu --noconfirm
      exit
    elif [[ "$input" == "y" ]] || [[ "$input" == "yes" ]]; then
      sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist
      sudo pacman -Syyu --noconfirm
      yay -Syu --noconfirm
      exit
    fi
fi

#sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist

#sudo pacman -Syyu --noconfirm

#yay -Syu --noconfirm

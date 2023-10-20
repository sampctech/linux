#!/bin/bash
set -e
##################################################################################################################
# Author  : Erik Dubois
# Editor  : Sam Barna
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxb.com
# Website	:	https://www.arcolinuxiso.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# software from standard Arch Linux repositories
# Core, Extra, Community, Multilib repositories
echo "Installing category Accessories"
sudo pacman -S --noconfirm --needed galculator

echo "Installing category Development"
sudo pacman -S --noconfirm --needed atom
#sudo pacman -S --noconfirm --needed

echo "Installing category Graphics"
sudo pacman -S --noconfirm --needed gnome-font-viewer

echo "Installing category Internet"
sudo pacman -S --noconfirm --needed chromium
sudo pacman -S --noconfirm --needed deluge
sudo pacman -S --noconfirm --needed firefox

echo "Installing category Multimedia"
sudo pacman -S --noconfirm --needed vlc

echo "Installing category Office"
#yay aur/masterpdfeditor-free
#yay aur/notpadpp-win64
#yay aur/notepadqq-git
#aur dir needs setup with counterpart for this to work

echo "Installing category System"
sudo pacman -S --noconfirm --needed arcolinux-tweak-tool-git
sudo pacman -S --noconfirm --needed curl
sudo pacman -S --noconfirm --needed dconf-editor
sudo pacman -S --noconfirm --needed gnome-disk-utility
sudo pacman -S --noconfirm --needed gparted
sudo pacman -S --noconfirm --needed gtk-engine-murrine
sudo pacman -S --noconfirm --needed noto-fonts
sudo pacman -S --noconfirm --needed numlockx
sudo pacman -S --noconfirm --needed termite
sudo pacman -S --noconfirm --needed ttf-ubuntu-font-family
sudo pacman -S --noconfirm --needed ttf-droid
sudo pacman -S --noconfirm --needed wget
sudo pacman -S --noconfirm --needed wmctrl
sudo pacman -S --noconfirm --needed rxvt-unicode
sudo pacman -S --noconfirm --needed urxvt-perls
sudo pacman -S --noconfirm --needed xdg-user-dirs

###############################################################################################

# installation of zippers and unzippers
sudo pacman -S --noconfirm --needed unace unrar zip unzip sharutils  uudeview  arj cabextract file-roller

###############################################################################################

echo "         INSTALL ADDITIONAL FONTS"

sudo ./fix/7-fonts-v1.sh

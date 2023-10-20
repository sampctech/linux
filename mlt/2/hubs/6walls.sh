#!/bin/bash
#set -e
#####################################################################
# Author  : Sam Barna
#####################################################################
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#####################################################################
echo "Do you want clone ArcoLinux wallpapers" [y/n]
read input
if [[ "$input" == "n" ]] || [[ "$input" == "no" ]]; then
  exit
elif [[ "$input" == "y" ]] || [[ "$input" == "yes" ]]; then
  mkdir ~/github/w
  cd ~/github/w
  git clone https://github.com/arcolinux/arcolinux-wallpapers
  git clone https://github.com/arcolinux/arcolinux-wallpapers-lxqt-dual
  git clone https://github.com/arcolinux/arcolinux-wallpapers-submicron1-3840x2400-wquxga
  git clone https://github.com/arcolinux/arcolinux-wallpapers-submicron2-3840x2400-wquxga
  git clone https://github.com/arcolinux/arcolinux-wallpapers-submicron3-3840x2400-wquxga
  git clone https://github.com/arcolinux/arcolinux-wallpapers-submicron4-3840x2400-wquxga
  git clone https://github.com/arcolinux/arcolinux-wallpapers-submicron5-3840x2400-wquxga
  git clone https://github.com/arcolinux/arcolinux-wallpapers-submicron6-3840x2400-wquxga
  git clone https://github.com/arcolinux/arcolinux-wallpapers-submicron7-3840x2400-wquxga
  git clone https://github.com/arcolinux/arcolinux-wallpapers-submicron8-3840x2400-wquxga
  git clone https://github.com/arcolinux/arcolinux-wallpapers-submicron-5120x2880-5K
fi

sudo mv /home/sam/github/w/arcolinux-wallpapers/usr/share/backgrounds/arcolinux/*.png /usr/share/backgrounds/arcolinux
sudo mv /home/sam/github/w/arcolinux-wallpapers/usr/share/backgrounds/arcolinux/*.jpg /usr/share/backgrounds/arcolinux
sudo mv /home/sam/github/w/arcolinux-wallpapers-lxqt-dual/usr/share/backgrounds/arcolinux-lxqt-dual/*.jpg /usr/share/backgrounds/arcolinux
sudo mv /home/sam/github/w/arcolinux-wallpapers-submicron1-3840x2400-wquxga/*.jpg /usr/share/backgrounds/arcolinux
sudo mv /home/sam/github/w/arcolinux-wallpapers-submicron2-3840x2400-wquxga/*.jpg /usr/share/backgrounds/arcolinux
sudo mv /home/sam/github/w/arcolinux-wallpapers-submicron3-3840x2400-wquxga/*.jpg /usr/share/backgrounds/arcolinux
sudo mv /home/sam/github/w/arcolinux-wallpapers-submicron4-3840x2400-wquxga/*.jpg /usr/share/backgrounds/arcolinux
sudo mv /home/sam/github/w/arcolinux-wallpapers-submicron5-3840x2400-wquxga/*.jpg /usr/share/backgrounds/arcolinux
sudo mv /home/sam/github/w/arcolinux-wallpapers-submicron6-3840x2400-wquxga/*.jpg /usr/share/backgrounds/arcolinux
sudo mv /home/sam/github/w/arcolinux-wallpapers-submicron7-3840x2400-wquxga/*.jpg /usr/share/backgrounds/arcolinux
sudo mv /home/sam/github/w/arcolinux-wallpapers-submicron8-3840x2400-wquxga/*.jpg /usr/share/backgrounds/arcolinux
sudo mv /home/sam/github/w/arcolinux-wallpapers-submicron-5120x2880-5K/*.png /usr/share/backgrounds/arcolinux
sudo mv /home/sam/github/w/arcolinux-wallpapers-submicron-5120x2880-5K/*.jpg /usr/share/backgrounds/arcolinux

#/*.jpg /usr/share/backgrounds/arcolinux
#/*.png /usr/share/backgrounds/arcolinux
sudo rm -frv /home/sam/github/w

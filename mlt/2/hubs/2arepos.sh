#!/bin/bash
#set -e
#####################################################################
# Author  : Sam Barna
#####################################################################
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#####################################################################
echo "Download the arcolinux repo's?" [y/n]
read input
if [[ "$input" == "n" ]] || [[ "$input" == "no" ]]; then
  echo "Fuck"
else [[ "$input" == "y" ]] || [[ "$input" == "yes" ]];
  echo "Fantastic!"
  echo "Here we go!"
  cd ~/github
  echo "Press Return to continue" []
  read input
    if [[ "$input" == "" ]] || [[ "$input" == "" ]]; then
      git clone https://github.com/arcolinux/arcolinux-apps
      git clone https://github.com/arcolinux/arcolinux-cinnamon
      git clone https://github.com/arcolinux/arcolinux-config-cinnamon
      git clone https://github.com/arcolinux/arcolinux-conky-collection
      git clone https://github.com/arcolinux/arcolinux-docs
      git clone https://github.com/arcolinux/arcolinux-local-applications
      git clone https://github.com/arcolinux/arcolinux-mirrorlist
      git clone https://github.com/arcolinux/arcolinux-mirrorlist-spinoff
      git clone https://github.com/erikdubois/arcolinux-nemesis
      git clone https://github.com/arcolinux/arcolinux-neofetch
      git clone https://github.com/arcolinux/arcolinux-oblogout-themes
      git clone https://github.com/arcolinux/arcolinux-obmenu-generator
      git clone https://github.com/arcolinux/arcolinux-obmenu-generator-minimal
      git clone https://github.com/arcolinux/arcolinux_repo
      git clone https://github.com/arcolinux/arcolinux_repo_3party
      git clone https://github.com/arcolinux/arcolinux_repo_iso
      git clone https://github.com/arcolinux/arcolinux_repo_submicron
      git clone https://github.com/arcolinux/arcolinux-root
      git clone https://github.com/arcolinux/arcolinux-system-config
      git clone https://github.com/arcolinux/arcolinux-system-installation
      git clone https://github.com/arcolinux/arcolinux-termite-themes
      git clone https://github.com/arcolinux/arcolinux-tweak-tool
      git clone https://github.com/arcolinux/arcolinux-welcome-app
      git clone https://github.com/arcolinux/arcolinuxd-iso
      git clone https://github.com/arcolinux/arcolinuxd-system-installation
    fi
fi

#mv? /home/sam/github/arcolinux-config-cinnamon/etc/skel/.config/
# /home/sam/github/arcolinux-cinnamon/etc/skel/.config/menus

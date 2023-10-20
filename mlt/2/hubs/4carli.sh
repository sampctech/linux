#!/bin/bash
#set -e
#####################################################################
# Author  : Sam Barna
#####################################################################
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#####################################################################
echo "Do you want to download the Carli Repos??" [y/n]
read input
  if [[ "$input" == "n" ]] || [[ "$input" == "no" ]]; then
    echo "Ok."
  else [[ "$input" == "y" ]] || [[ "$input" == "yes" ]];
    echo "Awesome! Here are those"
    cd ~/github
    mkdir carli
    cd carli
    git clone https://github.com/arcolinuxiso/carli-1
    git clone https://github.com/arcolinuxiso/carli-2
    git clone https://github.com/arcolinuxiso/carli-3
    git clone https://github.com/arcolinuxiso/carli-4
    git clone https://github.com/arcolinuxiso/carli-5
    git clone https://github.com/arcolinuxiso/carli_repo
    git clone https://github.com/arcolinuxiso/carli-pkgbuild
    git clone https://github.com/arcolinuxiso/carli-calamares-config
  fi

#!/bin/bash
#set -e
#####################################################################
# Author  : Sam Barna
#####################################################################
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#####################################################################
echo "Do you need to create an arco directory to combined all the repos?" [y/n]
read input
  if [[ "$input" == "n" ]] || [[ "$input" == "no" ]]; then
    echo "Ok."
  elif [[ "$input" == "y" ]] || [[ "$input" == "yes" ]]; then
    mkdir ~/github/myarco
  fi

cd ~/github/myarco

#sudo mv /home/sam/github/arcolinux-apps/usr ~/github/myarco
#sudo rm -frv /home/sam/github/arcolinux-apps

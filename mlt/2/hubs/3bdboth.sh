#!/bin/bash
#set -e
#####################################################################
# Author  : Sam Barna
#####################################################################
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#####################################################################
echo "Do you want clone ArcoLinux B, D, or both?" [b/d/a/n]
read input
  if [[ "$input" == "b" ]] || [[ "$input" == "b" ]]; then
    mkdir ~/github/arco_b
    cd ~/github/arco_b
    git clone https://github.com/arcolinuxb/arco-cinnamon
  elif [[ "$input" == "d" ]] || [[ "$input" == "d" ]]; then
    mkdir ~/github/arco_d
    cd ~/github/arco_d
    git clone https://github.com/arcolinuxd/arco-cinnamon
  elif [[ "$input" == "a" ]] || [[ "$input" == "a" ]]; then
    mkdir ~/github/arco_b
    cd ~/github/arco_b
    git clone https://github.com/arcolinuxb/arco-cinnamon
    mkdir ~/github/arco_d
    cd ~/github/arco_d
    git clone https://github.com/arcolinuxd/arco-cinnamon
  elif [[ "$input" == "n" ]] || [[ "$input" == "no" ]]; then
    echo "next"
  fi

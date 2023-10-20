#!/bin/bash
#set -e
#####################################################################
# Author  : Sam Barna
#####################################################################
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#####################################################################
cd ~/

echo "Arcolinux D or B" [d/b]
read input
  if [[ "$input" == "d" ]]; then
    git clone https://github.com/arcolinuxd/arco-cinnamon
  elif [[ "$input" == "b" ]]; then
    git clone https://github.com/arcolinuxb/arco-cinnamon
  exit
fi
#git clone https://github.com/sampctech/spt

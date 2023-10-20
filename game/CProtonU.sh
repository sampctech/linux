#!/bin/bash
#set -e
#####################################################################
# Author  : Sam Barna
#####################################################################
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#####################################################################
#

#cd ~/1/lutris
#echo "github"
git clone https://github.com/flubberding/ProtonUpdater
cd ProtonUpdater
chmod +777 *.sh
echo "Hands on or AutoMatic?" [h/a]
read input
  if [[ "$input" == "h" ]] || [[ "$input" == "h" ]];then
    #./dummyfile1.sh
    ./cproton.sh
    #exit
  elif [[ "$input" == "a" ]] || [[ "$input" == "a" ]];then
    #./dummyfile2.sh
    ./updatePGEfast.sh
    #exit
fi

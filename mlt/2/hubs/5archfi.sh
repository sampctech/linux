#!/bin/bash
#set -e
#####################################################################
# Author  : Sam Barna
#####################################################################
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#####################################################################
echo "Do you want archfi?" [y/n]
read input
if [[ "$input" == "n" ]] || [[ "$input" == "no" ]]; then
  echo "Ok."
else [[ "$input" == "y" ]] || [[ "$input" == "yes" ]];
  cd ~/github
  git clone https://github.com/MatMoul/archfi
fi

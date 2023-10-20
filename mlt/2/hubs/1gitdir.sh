#!/bin/bash
#set -e
#####################################################################
# Author  : Sam Barna
#####################################################################
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#####################################################################
echo "Do you need to create github directory?" [y/n]
read input
  if [[ "$input" == "n" ]] || [[ "$input" == "no" ]]; then
    echo "Ok."
  else [[ "$input" == "y" ]] || [[ "$input" == "yes" ]];
    echo "Sure thing."
    mkdir ~/github
fi

#!/bin/bash
#set -e
#####################################################################
# Author  : Sam Barna
#####################################################################
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#####################################################################
echo "Have you edited the scripts to suite your needs?" [y/n]
read input
if [[ "$input" == "n" ]] || [[ "$input" == "no" ]]; then
  echo "Ok. Come back after you have & run this again."
  echo "Or, if you want to use the defaults, just run this again & select yes."
  exit
else [[ "$input" == "y" ]] || [[ "$input" == "yes" ]];
  echo "Fantastic!"
fi

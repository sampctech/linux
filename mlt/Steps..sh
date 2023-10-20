#!/bin/bash
#Installer for base ArcoLinux
#
#Please edit all files as needed.
#
#For more info & learning how to, please start at
#www.arcolinux.info

echo "Would you like to install all ArcoLinux tweaks from Erik?" [y/n]
read input
if [[ "$input" == "n" ]] || [[ "$input" == "no" ]]; then
    echo "Ok. Go review the provided files & edit accordingly. "
    exit
else [[ "$input" == "y" ]] || [[ "$input" == "yes" ]];
    echo "Fantstic!"
fi
echo "It's a good idea to maximize the core count for building & installing packages. Would you like to enable all cores?" [y/n]
read input
  if [[ "$input" == "n" ]] || [[ "$input" == "no" ]]; then
    echo "Ok. Your choice. We'll still continue."
  else [[ "$input" == "y" ]] || [[ "$input" == "yes" ]];
    #./github/arco-cinnamon/000-use-all-cores-makepkg-conf-v4.sh
  fi

#echo "Next step is a Desktop."
#echo "Press C to install Cinnamon"
#  if [[ "$input" == "c" ]] || [[ "$input" == "cinnamon" ]];
#    ./github/arco-cinnamon/000-use-all-cores-makepkg-conf-v4.sh
#  else [[ "$input" == "" ]] || [[ "$input" == "any" ]]; then
#    echo "Ok, will continue forward"
  exit
fi

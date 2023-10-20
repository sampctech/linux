#!/bin/bash
#set -e
#####################################################################
# Author  : Sam Barna
#####################################################################
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#####################################################################
#
# dependencies first for lutris
# More documentation can be found at
#https://github.com/lutris/lutris/wiki/Wine-Dependencies

echo "UNHASH which Video driver you need before running!"
echo "Have you already done so?" [y/n]
read input
if [[ "$input" == "n" ]] || [[ "$input" == "no" ]]; then
  exit
elif [[ "$input" == "y" ]] || [[ "$input" == "yes" ]]; then
  echo "Now adding WINE Dependencies"
  sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist
  ./winchk.sh

  #Nvidia
  #Warning: Please ensure your graphics card is supported by modern Nvidia driver before installing. For a list of supported GPUs click here: https://www.nvidia.com/Download/driverResults.aspx/149138/en-us
  #Proprietary driver and support for Vulkan are required for proper functionality of games.
  sudo pacman -S --noconfirm --needed nvidia nvidia-utils lib32-nvidia-utils nvidia-settings vulkan-icd-loader lib32-vulkan-icd-loader

  #AMD
  #support for Vulkan API (will be functional only if you have a Vulkan capable GPU)
  #sudo pacman -S lib32-mesa vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader

  #Intel
  #To install support for Vulkan API (will be functional only if you have a Vulkan capable GPU)
  #Note: Only Skylake, Kaby Lake, and Coffee Lake offer full Vulkan support. Broadwell, Haswell and Ivy Bridge only offer partial support, which may not work with a lot of games. Sandy Bridge and older lack any Vulkan support whatsoever.
  #sudo pacman -S lib32-mesa vulkan-intel lib32-vulkan-intel vulkan-icd-loader lib32-vulkan-icd-loader

  echo "You now have the Dependencies for lutris."
fi
echo "Now we add some approvments"
echo "This next part may take some time"
~/1./execute
cd ~/1/lutris
./glichk.sh
./CProtonU.sh
./tkglitch.sh
./updateorigin.sh
exit

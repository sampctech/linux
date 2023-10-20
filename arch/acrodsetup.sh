#!/bin/bash
set -e

echo "Do you want to update the mirrorlist first?" [y/n]
read input
if [[ "$input" == "n" ]] || [[ "$input" == "no" ]]; then
	echo "No"
elif [[ "$input" == "y" ]] || [[ "$input" == "yes" ]]; then
	sudo pacman -S reflector --noconfirm
	sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist
fi

./000-use-all-cores-makepkg-conf-v4.sh
./100-display-manager-and-desktop-v1.sh
./110-install-sound-v3.sh
./120-bluetooth-v2.sh
./121-fix-bluetooth-switch-not-working-v1.sh
./130-install-printers-v3.sh
./150-install-network-discovery-v4.sh
#./160-install-tlp-for-laptops-v1.sh
./200-software-arch-linux-repo-v2.sh
./300-software-AUR-repo-v1.sh
./400-software-arch-linux-repo-distro-specific-v1.sh
./500-software-AUR-repo-distro-specific-v1.sh
./600-software-from-ArcoLinux-repo-v1.sh
./700-installing-fonts-v2.sh

./900-fix-microcode-error-v1.sh
./910-fix-mouse-cursor-breeze-snow-v1.sh

./140-install-samba-v3.sh

./800-autologin-v3.sh

echo "Would you like to update pacman? [y,n]"
read input
	if [[ "$input" == "n" ]] || [[ "$input" == "no" ]]; then
		echo "No. Ok. Maybe later"
	else [[ "$input" == "y" ]] || [[ "$input" == "yes" ]];
		sudo pacman -Syyu --noconfirm
		yay -Syu --noconfirm
fi

cd ~/spt/
./myup.sh
exit

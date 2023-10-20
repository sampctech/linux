#!/bin/bash
set -e
##################################################################################################################
# Author	:	Sam Barna
##################################################################################################################
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
##################################################################################################################
cd ~/arco-cinnamon
./000-use-all-cores-makepkg-conf-v4.sh
echo "Press Enter to continue or q to quit" []
read input
	if [[ "$input" = "q" ]] || [[ "$input" = "q" ]] then
		exit
	elif [[ "$input" = "" ]] || [[ "$input" = "" ]] then
fi
./100-display-manager-and-desktop-v1.sh
./110-install-sound-v3.sh
./120-bluetooth-v2.sh
./121-fix-bluetooth-switch-not-working-v1.sh
./130-install-printers-v3.sh
./150-install-network-discovery-v4.sh
echo "Press Enter to continue or q to quit" []
read input
	if [[ "$input" = "q" ]] || [[ "$input" = "q" ]] then
		exit
	elif [[ "$input" = "" ]] || [[ "$input" = "" ]] then
fi
./200-software-arch-linux-repo-v2.sh
./300-software-AUR-repo-v1.sh
echo "Press Enter to continue or q to quit" []
read input
	if [[ "$input" = "q" ]] || [[ "$input" = "q" ]] then
		exit
	elif [[ "$input" = "" ]] || [[ "$input" = "" ]] then
fi
./400-software-arch-linux-repo-distro-specific-v1.sh
./500-software-AUR-repo-distro-specific-v1.sh
./600-software-from-ArcoLinux-repo-v1.sh
./700-installing-fonts-v2.sh
./900-fix-microcode-error-v1.sh
./910-fix-mouse-cursor-breeze-snow-v1.sh

echo "Do you want to setup samba now?" [y/n]
read input
	if [[ "$input" = "n" ]] || [[ "$input" = "no" ]] then
		echo "Moving op then"
	elif [[ "$input" = "y" ]] || [[ "$input" = "yes" ]] then
		./140-install-samba-v3.sh
	fi
fi
echo "Do you want to setup Auto Login?" [y/n]
	if [[ "$input" = "n" ]] || [[ "$input" = "no" ]] then
		echo "Moving op then"
	elif [[ "$input" = "y" ]] || [[ "$input" = "yes" ]] then
		./800-autologin-v3.sh
	fi
fi

cd ~/spt/
./myup.sh
exit

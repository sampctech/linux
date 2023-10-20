#!/bin/bash
set -e
################################################################################
# Author  : Sam Barna
################################################################################
#
# SO NOT JUST RUN. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
################################################################################

echo "#########################################################################"
echo "####     Running this will install all scripts, start to finish      ####"
echo "#########################################################################"

./100-display-manager-and-desktop-v1.sh

./110-install-sound-v3.sh

./120-bluetooth-v2.sh

./121-fix-bluetooth-switch-not-working-v1.sh

./130-install-printers-v3.sh

./150-install-network-discovery-v4.sh

./140-install-samba-v3.sh

#./160-install-tlp-for-laptops-v1.sh

./200-software-arch-linux-repo-v2.sh

./300-software-AUR-repo-v1.sh

./400-software-arch-linux-repo-distro-specific-v1.sh

./500-software-AUR-repo-distro-specific-v1.sh

./600-software-from-ArcoLinux-repo-v1.sh

./700-installing-fonts-v2.sh

./800-autologin-v3.sh

./900-fix-microcode-error-v1.sh

./910-fix-mouse-cursor-breeze-snow-v1.sh

echo "#########################################################################"
echo "####           Run mirror, update, up & then sr  to finish           ####"
echo "#########################################################################"

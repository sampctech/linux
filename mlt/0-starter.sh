#!/bin/bash
set -e
################################################################################
# Author	:	Erik Dubois                                                        #
# Editor  : Sam Barna                                                          #
# Website	:	https://www.erikdubois.be                                          #
# Website	:	https://www.arcolinux.info                                         #
# Website	:	https://www.arcolinux.com                                          #
# Website	:	https://www.arcolinuxd.com                                         #
# Website	:	https://www.arcolinuxforum.com                                     #
################################################################################
#                                                                              #
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.             #
#                                                                              #
################################################################################
echo "#########################################################################"
echo "############      Use all available cores makepkg conf       ############"
echo "################           credits to Soehub             ################"
echo "#### https://gist.github.com/soehub/fc07b86e2292c562328ee0dc2aadf740 ####"
echo "#########################################################################"

numberofcores=$(grep -c ^processor /proc/cpuinfo)

if [ $numberofcores -gt 1 ]
then
        echo "You have " $numberofcores" cores."
        echo "Changing the makeflags for "$numberofcores" cores."
        sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j'$(($numberofcores+1))'"/g' /etc/makepkg.conf;
        echo "Changing the compression settings for "$numberofcores" cores."
        sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T '"$numberofcores"' -z -)/g' /etc/makepkg.conf
else
        echo "No change."
fi

echo "#########################################################################"
echo "####     All cores will be used during building and compression      ####"
echo "#########################################################################"

echo "#########################################################################"
echo "####     Now to install the desktop & get ready to setup system      ####"
echo "#########################################################################"

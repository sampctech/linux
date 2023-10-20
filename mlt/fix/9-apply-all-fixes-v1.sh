echo "#########################################################################"
echo "###############            APPLY PATCH & FIXES            ###############"
echo "#########################################################################"

echo "-------------------------------------------------------------------------"

echo "#########################################################################"
echo "########      bluetooth & fix bluetooth-switch not working       ########"
echo "#########################################################################"

sudo ./fix/1-bluetooth-v2.sh
sudo ./fix/2-fix-bluetooth-switch-not-working-v1.sh

echo "-------------------------------------------------------------------------"
echo "-------------------------------------------------------------------------"

echo "#########################################################################"
echo "####                       FIX MICROCODE ERROR                       ####"
echo "#########################################################################"

sudo ./fix/3-fix-microcode-error-v1.sh

echo "-------------------------------------------------------------------------"
echo "-------------------------------------------------------------------------"

echo "#########################################################################"
echo "####                 FIX MOUSE CURSOR BREEZE SNOW                    ####"
echo "#########################################################################"

sudo ./fix/4-fix-mouse-cursor-breeze-snow-v1.sh

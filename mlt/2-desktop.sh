echo "#########################################################################"
echo "####           Installing displaymanager or login manager            ####"
echo "#########################################################################"

#installing displaymanager or login manager
sudo pacman -S --noconfirm --needed lightdm
sudo pacman -S --noconfirm --needed arcolinux-lightdm-gtk-greeter arcolinux-lightdm-gtk-greeter-settings
sudo pacman -S --noconfirm --needed arcolinux-wallpapers-git
#installing desktop environment
sudo pacman -S cinnamon --noconfirm --needed
#enabling displaymanager or login manager
sudo systemctl enable lightdm.service -f
sudo systemctl set-default graphical.target

echo "#########################################################################"
echo "####                         sound software                          ####"
echo "#########################################################################"
#Sound
sudo pacman -S pulseaudio --noconfirm --needed
sudo pacman -S pulseaudio-alsa --noconfirm --needed
#sudo pacman -S pavucontrol  --noconfirm --needed
sudo pacman -S alsa-utils alsa-plugins alsa-lib alsa-firmware --noconfirm --needed
sudo pacman -S gstreamer --noconfirm --needed
sudo pacman -S gst-plugins-good gst-plugins-bad gst-plugins-base gst-plugins-ugly --noconfirm --needed
#sudo pacman -S volumeicon --noconfirm --needed
sudo pacman -S playerctl --noconfirm --needed

echo "#########################################################################"
echo "################    sound software software installed    ################"
echo "#########################################################################"

echo "-------------------------------------------------------------------------"

echo "#########################################################################"
echo "################             Install printers             ###############"
echo "#########################################################################"

sudo pacman -S --noconfirm --needed cups cups-pdf

#first try if you can print without foomatic
#sudo pacman -S foomatic-db-engine --noconfirm --needed
#sudo pacman -S foomatic-db foomatic-db-ppds foomatic-db-nonfree-ppds foomatic-db-gutenprint-ppds --noconfirm --needed
sudo pacman -S ghostscript gsfonts gutenprint --noconfirm --needed
sudo pacman -S gtk3-print-backends --noconfirm --needed
sudo pacman -S libcups --noconfirm --needed
sudo pacman -S hplip --noconfirm --needed
sudo pacman -S system-config-printer --noconfirm --needed

sudo systemctl enable org.cups.cupsd.service

echo "After rebooting it will work"

echo "#########################################################################"
echo "#########        printer management software installed         ##########"
echo "#########################################################################"

echo "-------------------------------------------------------------------------"

echo "#########################################################################"
echo "################            Network Discovery            ################"
echo "#########################################################################"

sudo pacman -S --noconfirm --needed avahi
sudo systemctl enable avahi-daemon.service
sudo systemctl start avahi-daemon.service

#shares on a mac
sudo pacman -S --noconfirm --needed nss-mdns

#shares on a linux
sudo pacman -S --noconfirm --needed gvfs-smb

#change nsswitch.conf for access to nas servers
#original line comes from the package filesystem
#hosts: files mymachines myhostname resolve [!UNAVAIL=return] dns
#ArcoLinux line
#hosts: files mymachines resolve [!UNAVAIL=return] mdns dns wins myhostname

#first part
sudo sed -i 's/files mymachines myhostname/files mymachines/g' /etc/nsswitch.conf
#last part
sudo sed -i 's/\[\!UNAVAIL=return\] dns/\[\!UNAVAIL=return\] mdns dns wins myhostname/g' /etc/nsswitch.conf
echo "#########################################################################"
echo "########          network discovery software installed           ########"
echo "#########################################################################"

echo "-------------------------------------------------------------------------"

echo "#########################################################################"
echo "################         Instal samba software           ################"
echo "#########################################################################"

sudo pacman -S --noconfirm --needed samba
sudo wget "https://git.samba.org/samba.git/?p=samba.git;a=blob_plain;f=examples/smb.conf.default;hb=HEAD" -O /etc/samba/smb.conf.original
sudo wget "https://raw.githubusercontent.com/arcolinux/arcolinux-system-config/master/etc/samba/smb.conf.arcolinux" -O /etc/samba/smb.conf.arcolinux
sudo wget "https://raw.githubusercontent.com/arcolinux/arcolinux-system-config/master/etc/samba/smb.conf.arcolinux" -O /etc/samba/smb.conf
sudo systemctl enable smb.service
sudo systemctl start smb.service
sudo systemctl enable nmb.service
sudo systemctl start nmb.service

##Change your username here
read -p "What is your login? It will be used to add this user to smb : " choice
sudo smbpasswd -a $choice

#access samba share windows
sudo pacman -S --noconfirm --needed gvfs-smb

echo "#########################################################################"
echo "################        samba software installed         ################"
echo "#########################################################################"

echo "-------------------------------------------------------------------------"

echo "#########################################################################"
echo "##################          AUTO LOGIN SETUP           ##################"
echo "#########################################################################"

echo "This script will ask your login name "
echo "It will be used to add you to the group autologin "
#echo "https://wiki.archlinux.org/index.php/LightDM#Enabling_autologin"

#checking if group autologin exists for Arch Linux
function grpexists {
if [ $(getent group $1) ]; then
  echo "Check : Group $1 exists"
else
  echo "Group $1 does not exist. Go to ArchWay folder"
  echo "Run the script to create the group autologin and"
  echo "rerun this script afterwards."
  exit 1
fi
}
grpexists autologin

##Change your username here
read -p "What is your login?
It will be used to add this user to the group autologin : " choice
sudo gpasswd -a $choice autologin

sudo sed -i 's/'#autologin-user='/'autologin-user=$choice'/g' /etc/lightdm/lightdm.conf
sudo sed -i 's/'#autologin-session='/'autologin-session=cinnamon'/g' /etc/lightdm/lightdm.conf

echo "#########################################################################"
echo "########         You can now autologin - reboot to check         ########"
echo "#########################################################################"

echo "-------------------------------------------------------------------------"
echo "-------------------------------------------------------------------------"

echo "#########################################################################"
echo "#####            INSTALL BLUETOOTH & APPLY PATCH & FIXES            #####"
echo "#########################################################################"

sudo ./fix/9-apply-all-fixes-v1.sh

echo "-------------------------------------------------------------------------"
echo "-------------------------------------------------------------------------"

echo "#########################################################################"
echo "###################     N E X T . . . A P P S      ######################"
echo "#########################################################################"

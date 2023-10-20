#!/bin/bash
#set -e
#####################################################################
# Author  : Sam Barna
#####################################################################
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#####################################################################

echo "##############################################################"
echo "  This is hopefully going to be able to take every script in  "
echo "     the selected directory and make them all executable.     "
echo "--------------------------------------------------------------"
echo "                         hopefully.                           "
echo "##############################################################"

#chmod modify grant permissions
#
#pattern when looking permission status with ls -l    ----------
#1st dash is d or - _ d=directory -=file
#next 3 = User / next 3 = Group / next 3 = Others
#
#Who (u,g,o,a) User, Group, Others, All
#What (-,+,=) -Removes, +Grants, = Sets a permission & removes others
#Which (r,w,x) r Read,w Write, x Execute
#
#Example  ---------- means file with no permissions
#         drwxrwxrwx means directory with rwx on all
#
#For more info to get a better understanding got to following
#https://www.howtogeek.com/437958/how-to-use-the-chmod-command-on-linux/
#
#chmod +754 grants user all, group & others r&x

#chmod +xsr *.sh
#chmod +rwx *.sh

chmod +777 *.sh
chmod +777 ~/Desktop/spt/bashrc
chmod +777 ~/Desktop/spt/*.sh
chmod +777 ~/Desktop/spt/hubs/*.sh
chmod +777 ~/Desktop/mlt/*.sh

chmod +774 ~/github/*.sh

chmod +754 ~/github/mlt/*.sh
chmod +754 ~/github/mlt/fix/*.sh
chmod +754 ~/github/mlt/Archway/*.sh

echo "##############################################################"
echo "   If fails, we MUST try again in order to better ourselves.  "
echo "##############################################################"

echo "##############################################################"
echo "  If fails, just run the chmod for each item. Don't stay lazy "
echo "##############################################################"

#!/bin/bash
#set -e
#####################################################################
# Author  : Sam Barna
#####################################################################
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#####################################################################

echo "##############################################################"
echo "  This will make every script in github directory executable. "
echo "--------------------------------------------------------------"
echo "                         hopefully.                           "
echo "--------------------------------------------------------------"

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
#chmod +777 *.sh

chmod -R 755 "$HOME"/github

echo "   If fails, we MUST try again in order to better ourselves.  "
echo "##############################################################"

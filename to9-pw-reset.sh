#!/bin/bash
# Change a user's password across all TO9 Unix servers
# The srvlist.txt.full is one IP (or hostname) per line.
echo "This script will change the user's password on all TO9 *nix servers."
echo "Enter the username and press <ENTER>: "
read NEWUSER
echo "Enter the new password and press <ENTER>: "
NEWPWD=`openssl passwd -1`
#echo $NEWUSER:$NEWPWD
for i in `cat $HOME/bin/srvlist.txt.full`;
 do echo SSHing to $i
   ssh -t sneadgle@${i} "echo '$NEWUSER:$NEWPWD' | sudo /usr/sbin/chpasswd -e "
done
#   sudo /usr/sbin/useradd -G wheel $new_user

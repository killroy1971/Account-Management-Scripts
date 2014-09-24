#!/bin/bash
# Change a user's password across all servers listed in srvlist.txt
# The srvlist.txt is one IP (or hostname) per line.
echo "This script will change the user's password on all servers listed in srvlist.txt."
echo "Enter the username and press <ENTER>: "
read NEWUSER
echo "Enter the new password and press <ENTER>: "
NEWPWD=`openssl passwd -1`
#echo $NEWUSER:$NEWPWD
for i in `cat $HOME/bin/srvlist.txt.full`;
 do echo SSHing to $i
   ssh -t sneadgle@${i} "echo '$NEWUSER:$NEWPWD' | sudo /usr/sbin/chpasswd -e "
done

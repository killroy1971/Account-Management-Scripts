#!/bin/bash
# Create a user account on all servers listed in srvlist.txt.
# The srvlist.txt is one IP (or hostname) per line.
echo "This script will create a user account on all servers listed in srvlist.txt."
echo "Enter the username and press <ENTER>: "
read NEWUSER
echo "Enter the new password and press <ENTER>: "
NEWPWD=`openssl passwd -1`
#echo $NEWUSER:$NEWPWD
for i in `cat $HOME/bin/srvlist.txt`;
 do echo SSHing to $i
   echo Creating account $NEWUSER
   ssh -t sneadgle@${i} "sudo /usr/sbin/useradd -G wheel $NEWUSER"
   echo Setting Password $NEWPWD for account $NEWUSER
   ssh -t sneadgle@${i} "echo '$NEWUSER:$NEWPWD' | sudo /usr/sbin/chpasswd -e "
done

#!/bin/bash
# Create a user account on all servers listed in srvlist.txt.
# The srvlist.txt is one IP (or hostname) per line.
echo "This script will create a user account on all servers listed in srvlist.txt."
echo "Enter the username and press <ENTER>: "
read NEWUSER
echo "Enter the new password and press <ENTER>: "
NEWPWD=`openssl passwd -1`
echo "Enter the user user's supplimentary groups: "
read SUPGROUPS
for i in `cat ./srvlist.txt`;
 do echo SSHing to $i
   echo Creating account $NEWUSER
   ssh -t ${USER}@${i} "sudo /usr/sbin/useradd -G ${SUPGROUPS} ${NEWUSER}"
   echo Setting Password ${NEWPWD} for account ${NEWUSER}
   ssh -t ${USER}@${i} "echo '${NEWUSER}:${NEWPWD}' | sudo /usr/sbin/chpasswd -e "
done

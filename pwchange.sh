#!/bin/bash
# Change a user's password across all servers in srvlist.txt
# The srvlist.txt is one IP (or hostname) per line.
echo "This script will change the user's password on all servers in srvlist.txt"
echo "Enter the username and press <ENTER>: "
read NEWUSER
echo "Enter the new password and press <ENTER>: "
NEWPWD=`openssl passwd -1`
for i in `cat ./srvlist.txt`;
 do echo SSHing to $i
   ssh -t ${USER}@${i} "echo '${NEWUSER}:${NEWPWD}' | sudo /usr/sbin/chpasswd -e "
   ssh -t ${USER}@${i} "if [ -d /var/run/faillock ]; then sudo faillock --${NEWUSER} --reset "
done

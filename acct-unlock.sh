#!/bin/bash
# Locks a user account on all servers in srvlist.txt.
# The srvlist.txt is one IP (or hostname) per line.
echo "This script will lock a user account on all servers in srvlist.txt."
echo "Enter the username and press <ENTER>: "
read LOCKUSER
for i in `cat ./srvlist.txt`;
 do echo SSHing to $i
   ssh -t ${USER}@${i} "sudo passwd -u ${LOCKUSER}"
   ssh -t ${USER}@${i} "if [ -d /var/run/faillolck ]; then sudo faillock --${LOCKUSER} --reset"
done

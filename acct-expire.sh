#!/bin/bash
# Set a user account's expiration date on all servers in srvlist.txt.
# The srvlist.txt is one IP (or hostname) per line.
echo "This script will set a user account's expiration date on all servers in srvlist.txt."
echo "Enter the username and press <ENTER>: "
read LOCKUSER
echo "Enter the expiration date in YYYY-MM-DD format: " 
read EXPIREDATE
for i in `cat ./srvlist.txt`;
 do echo SSHing to $i
   ssh -t ${USER}@${i} "sudo chage --lastday ${EXPIREDATE} ${LOCKUSER}"
done

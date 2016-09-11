#!/bin/bash
# Check for a user account on all servers listed in srvlist.txt.
# The srvlist.txt is one IP (or hostname) per line.
echo "This script will check for a user on all servers listed in srvlist.txt."
echo "Enter the username and press <ENTER>: "
read THATUSER
for i in `cat ./srvlist.txt`;
 do echo SSHing to $i
   ssh -t ${USER}@${i} "getent passwd $THATUSER"
done

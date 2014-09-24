#!/bin/bash
# Remove a user account on all servers in srvlist.txt.
# The srvlist.txt is one IP (or hostname) per line.
echo "This script will remove a user account on all servers in srvlist.txt."
echo "Enter the username and press <ENTER>: "
read DELUSER
for i in `cat $HOME/bin/srvlist.txt`;
 do echo SSHing to $i
   ssh -t sneadgle@${i} "sudo /usr/sbin/userdel -r $DELUSER"
done

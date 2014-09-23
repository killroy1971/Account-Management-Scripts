#!/bin/bash
# Create a user account on all TO9 servers.
# The srvlist.txt.full is one IP (or hostname) per line.
echo "This script will remove a user account on all TO9 *nix servers."
echo "Enter the username and press <ENTER>: "
read DELUSER
for i in `cat $HOME/bin/srvlist.txt.full`;
 do echo SSHing to $i
   ssh -t sneadgle@${i} "sudo /usr/sbin/userdel -r $DELUSER"
done

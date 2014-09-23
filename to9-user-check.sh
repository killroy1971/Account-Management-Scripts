#!/bin/bash
# Change a user's password across all TO9 Unix servers
# The srvlist.txt.full is one IP (or hostname) per line.
echo "This script will check for a user on all TO9 *nix servers."
echo "Enter the username and press <ENTER>: "
read THATUSER
for i in `cat $HOME/bin/srvlist.txt.full`;
 do echo SSHing to $i
   ssh -t sneadgle@${i} "getent passwd $THATUSER"
done

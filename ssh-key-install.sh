#!/bin/bash
# Copy my id_rsa.pub key to all servers in "srvlist.txt"
# You must have ssh-copy-id installed for this to work.
# The srvlist.txt is one IP (or hostname) per line.
for i in `cat srvlist.txt`;
 do echo SSHing to $i
   ssh-copy-id -i $HOME/.ssh/id_rsa.pub $USER@${i}
done

#!/bin/bash
# Copy my id_rsa.pub key to TO9 server as "authorized_keys"
# You must have ssh-copy-id installed for this to work.
# The srvlist.txt.full is one IP (or hostname) per line.
for i in `cat srvlist.txt.full`;
 do echo SSHing to $i
   ssh-copy-id -i $HOME/.ssh/id_rsa.pub $USER@${i}
done

#!/bin/bash
# Copy my id_rsa.pub key to TO9 server as "authorized_keys"
# You must have ssh-copy-id installed for this to work.
# The srvlist.txt.full is one IP (or hostname) per line.
echo "First, create your RSA ssh public/private key pair:"
echo "sshkeygen -t rsa"; echo "Accept the defaults.  Use a passphrase."
echo "Please enter your TO9 username:"; read $THEUSER
for i in `cat srvlist.txt.full`;
 do echo SSHing to $i
   ssh-copy-id -i $HOME/.ssh/id_rsa.pub $THEUSER@${i}
done

#!/bin/bash
# Create an SSH Public/Private keypair.
# Copy your/my id_rsa.pub key to servers listed in srvlist.txt"
# You must have ssh-copy-id installed for this to work.
# The srvlist.txt is one IP (or hostname) per line.
echo "First, create your RSA ssh public/private key pair:"
echo "Accept the defaults.  Use a passphrase."
sshkeygen -t rsa
for i in `cat srvlist.txt.full`;
 do echo SSHing to $i
   ssh-copy-id -i $HOME/.ssh/id_rsa.pub $USER@${i}
done

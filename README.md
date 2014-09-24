Account-Management-Scripts
==========================
These are a few manual account management scripts that I complied on my last project.
If you aren't using LDAP or you can't use an automation framework like Puppet to push your account password changes, this collection of scripts should help.

Requirements
------------
These scripts were written for RedHat Enterprise Linux 6.5/CentOS 6.5 but should work under other Linux distributions provied they use the same utilities.  Reivew the scripts before implementing.

You must have a working account on all of the servers you plan on listing in srvlist.txt.

All scripts prompt for the target username and/or password as requried.

Scripts
-------
* acct-create.sh: Create an account on all servers listed in srvlist.txt. 
* pw-reset.sh: Perform a password change on all servers listed in srvlist.txt.
* acct-remove.sh: Removes the specified account in all servers listed in srvlist.txt
* user-check.sh: Test for a user account's presence on all servers listed in srvlist.txt
* ssh-key-gen.sh: Creates a public/private SSH keypair for the current user, and copies the public key to every server listed in srvlist.txt.
* ssh-key-install.sh: Copy the current user's SSH Publickey to all servers listed in srvlist.txt.


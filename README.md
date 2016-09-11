Account-Management-Scripts
==========================
These are a few manual account management scripts that I complied for a project.
If you aren't using LDAP or you can't use an automation framework like Puppet to push your account password changes, this collection of scripts should help.

Requirements
------------
These scripts were written for RedHat Enterprise Linux 6.5/CentOS 6.5 but should work under other Linux distributions provied they use the same utilities.  Reivew the scripts before implementing.

You must have a working account on all of the servers you plan on listing in srvlist.txt.

All scripts prompt for the target username and/or password as requried.

Note: You'll have to copy your SSH public key to the target servers and allow your account to execute sudo commands without authenticating, or you'll be entering your password A LOT!

Use these scripts only on enclosed environments where you don't care about or requrie security. Allowing accounts to run sudo commands without authentication is NOT a good security practice.


Scripts
-------
* acct-create.sh: Create an account on all servers listed in srvlist.txt. 
* acct-remove.sh: Removes the specified account in all servers listed in srvlist.txt.
* acct-lock.sh: Locks the specified account on all servers listed in srvlist.txt.
* acct-unlock.sh: Unlocks the specified account on all servers listed in srvlist.txt.
* acct-expire.sh: Sets the specified account expire date on all servers listed in srvlist.txt.
* pwchange.sh: Perform a password change on all servers listed in srvlist.txt.
* user-check.sh: Test for a user account's presence on all servers listed in srvlist.txt
* ssh-key-install.sh: Copy the current user's SSH Publickey to all servers listed in srvlist.txt.


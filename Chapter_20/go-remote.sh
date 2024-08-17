#!/bin/bash
# name of the remote account
Remote_User=horatio

# password for the remote account
Remote_Password=$(openssl enc -aes-256-cbc -md sha512 -a -d -pbkdf2 -iter 100000 -salt -pass pass:'Turkey&&Lips' < .secret_vault.txt)

# remote computer
Remote_Server=192.168.0.22
    
# connect to the remote computer and put a timestamp in a file called script.log
sshpass -p $Remote_Password ssh -T $Remote_User@$Remote_Server << _remote_commands
echo $USER "-" $(date) >> /home/$Remote_User/script.log

_remote_commands

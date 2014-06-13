#!/bin/bash

scp setup_node_ubuntu.sh root@$1:"~/"
ssh root@$1 "chmod a+x ~/setup_node_ubuntu.sh; screen -Sdm setup ~/setup_node_ubuntu.sh"

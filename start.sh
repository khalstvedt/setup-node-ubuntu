#!/bin/bash

scp setup_node_ubuntu.sh root@107.170.139.156:"~/"
ssh root@107.170.139.156 "chmod a+x ~/setup_node_ubuntu.sh; screen -Sdm setup ~/setup_node_ubuntu.sh"

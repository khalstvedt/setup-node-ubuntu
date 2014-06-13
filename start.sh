#!/bin/bash

# check for remote parameter
if [ -n "$1" ]; then
    if [ "$1" = "-r" ]; then
        if  [ -n "$2" ]; then
            printf "Executing remote install at $2"
            # copy setup script
            scp ./setup_ubuntu.sh root@$2:"~/"

            # run script under new 'setup' screen
            ssh root@$2 "screen -Sdm setup /bin/bash ~/setup_ubuntu.sh"
        else
            printf "Remote flag requires an address parameter."
        fi
    else
        printf "Invalid option. You may use the -r option with an address parameter only."
    fi
else
    printf "Executing local install"
    screen -Sdm setup /bin/bash ./setup_ubuntu.sh
fi

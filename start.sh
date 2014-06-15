#!/bin/bash

# check for remote parameter
if [ -n "$1" ]; then
    if [ "$1" = "-r" ]; then
        if  [ -n "$2" ]; then
            printf "Executing remote install at $2 ...\n\n"
            # copy setup script
            scp ./setup_ubuntu.sh root@$2:"~/"

            # run script under new 'setup' tmux session
            ssh -t root@$2 "tmux new -n setup '/bin/bash ~/setup_ubuntu.sh'"
        else
            printf "Remote flag requires an address parameter.\n\n"
        fi
    else
        printf "Invalid option. You may use the -r option with an address parameter only.\n\n"
    fi
else
    printf "Executing local install...\n\n"
    tmux new -n setup "/bin/bash ./setup_ubuntu.sh"
fi

#!/bin/bash
#
#
# get mongo key
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
# write mongo list file
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
# update apt cache
sudo apt-get -y update
# install updates
sudo apt-get -y upgrade
# install basics
sudo apt-get -y install emacs npm mongodb-org
# install nvm
curl https://raw.githubusercontent.com/creationix/nvm/v0.7.0/install.sh | sh
printf "source ~/.nvm/nvm.sh\n" >> ~/.bashrc
# install meteor
curl https://install.meteor.com | /bin/sh

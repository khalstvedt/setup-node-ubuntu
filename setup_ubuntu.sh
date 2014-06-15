#!/bin/bash

# get mongo key
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
# write mongo list file
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list

# update apt cache
sudo apt-get -y update
# install updates
sudo apt-get -y upgrade

# install basics
sudo apt-get -y install git htop emacs

# install mongodb
sudo apt-get -y install mongodb-org

# install nvm, node
sudo apt-get -y install npm
curl https://raw.githubusercontent.com/creationix/nvm/v0.7.0/install.sh | sh
source ~/.nvm/nvm.sh
nvm install 0.11

# install pip, venv (assumes python 2.7 pre-installed)
sudo apt-get -y install python-pip
sudo pip install virtualenv virtualenvwrapper

# install rvm, ruby
curl -L https://get.rvm.io | bash -s stable --autolibs=enabled --ruby
source /usr/local/rvm/scripts/rvm

# install meteor
curl https://install.meteor.com | /bin/sh

# configure git
git config --global user.email "khalstvedt@gmail.com"
git config --global user.name "Kyle Halstvedt"

printf "\nSetup successfully completed!\n\nInstalled:\ngit\nhtop\nemacs\nmongodb\nnvm, node\npip, venv\nrvm,ruby\nmeteor\n\n"

# enter interactive session to preserve screen session
exec bash

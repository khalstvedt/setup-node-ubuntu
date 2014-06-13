sudo apt-get update
sudo apt-get upgrade
sudo apt-get install emacs git npm
curl https://raw.githubusercontent.com/creationix/nvm/v0.7.0/install.sh | sh
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install mongodb-org
curl https://install.meteor.com | /bin/sh

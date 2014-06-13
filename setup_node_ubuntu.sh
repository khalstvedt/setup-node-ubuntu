sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install emacs npm mongodb-org
curl https://raw.githubusercontent.com/creationix/nvm/v0.7.0/install.sh | sh
curl https://install.meteor.com | /bin/sh

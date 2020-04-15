#!/bin/bash

echo "User interaction is requierd in two times"
echo "User interaction is requierd in two times"
echo "User interaction is requierd in two times"
echo "User interaction is requierd in two times"

#update dependencies
sudo apt-get -y update
sudo apt-get install -y build-essential
sudo apt-get install -y qtcreator
sudo apt-get install -y qt5-default
sudo apt-get install -y qtdeclarative5-dev
sudo apt-get install -y liblinphone-dev
sudo apt-get install -y git


sudo apt install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker

#add crontab

echo "@reboot sudo modprobe bcm2835-v4l2" >> mycron
sudo crontab mycron
rm mycron

#download docker image and run

sudo docker pull koifresh/key_server:1.0
sudo docker rm key_server
sudo docker container run --net=host -d --restart always --name key_server koifresh/key_server:1.0


#config key_logger

mkdir /home/key_logger
cd /home/key_logger
git clone https://github.com/KoiFresh/key_logger.git
bash start.sh

#config asterisk

sudo asterisk -x "core stop now"

echo "User interaction is requierd in two times"

sudo apt-get install asterisk

echo "User interaction sucessfully completed"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR 


sudo cp sip/extensions.conf /etc/asterisk/extensions.conf
sudo cp sip/sip.conf /etc/asterisk/sip.conf
sudo cp sip/modules.conf /etc/asterisk/modules.conf

bash update.sh

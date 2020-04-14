#!/bin/bash

sudo apt-get -y update
sudo apt-get install -y build-essential
sudo apt-get install -y qtcreator
sudo apt-get install -y qt5-default
sudo apt-get install -y qtdeclarative5-dev
sudo apt-get install -y liblinphone-dev
sudo mv dingdong.desktop /etc/xdg/autostart/dingdong.desktop
sudo reboot 

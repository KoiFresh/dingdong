#!/bin/bash

#sudo apt-get -y update
#sudo apt-get install -y build-essential
#sudo apt-get install -y qtcreator
#sudo apt-get install -y qt5-default
#sudo apt-get install -y qtdeclarative5-dev
#sudo apt-get install -y liblinphone-dev

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR 
sed -i "4s@.*@Exec=bash $DIR/start.sh@" dingdong.desktop
sudo cp dingdong.desktop /etc/xdg/autostart/dingdong.desktop
qmake mate.pro
make
echo "The System Reboots now"
sudo reboot 

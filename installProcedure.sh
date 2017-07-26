#!/bin/sh
# https://learn.adafruit.com/mpr121-capacitive-touch-sensor-on-raspberry-pi-and-beaglebone-black/overview
# https://github.com/Hemisphere-Project/HPlayer

sudo apt-get update
sudo apt-get install build-essential python-dev python-smbus python-pip git libfreeimage3 -y

sudo pip3 install python-osc Adafruit_Python_MPR121

cd ..

if [ ! -d "Adafruit_Python_MPR121" ]; then
    git clone https://github.com/adafruit/Adafruit_Python_MPR121.git
	#cd Adafruit_Python_MPR121
	#sudo python setup.py install
	#cd -
	sudo echo sudo python3 /home/pi/CollanaDisambiguo/simpletest.py & >> /etc/rc.local
fi

if [ ! -d "HPlayer" ]; then
    git clone https://github.com/Hemisphere-Project/HPlayer.git
	sudo echo /home/pi/HPlayer/bin-raspbian-armv6/HPlayer --gl 1 --volume 100 --loop 0 & >> /etc/rc.local #--ahdmi 1
fi

cd -
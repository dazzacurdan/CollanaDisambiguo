#!/bin/sh
# https://learn.adafruit.com/mpr121-capacitive-touch-sensor-on-raspberry-pi-and-beaglebone-black/overview
# https://github.com/Hemisphere-Project/HPlayer

sudo apt-get update
sudo apt-get install build-essential python-dev python-smbus python-pip git libfreeimage3 -y

sudo pip install python-osc

cd ..

if [ ! -d "Adafruit_Python_MPR121" ]; then
    git clone https://github.com/adafruit/Adafruit_Python_MPR121.git
	cd Adafruit_Python_MPR121
	sudo python setup.py install
	cd -
fi

if [ ! -d "HPlayer" ]; then
    git clone https://github.com/Hemisphere-Project/HPlayer.git
fi

cd -
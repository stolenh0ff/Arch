#!/bin/bash

#m433ia

sudo pacman -S libevdev python-libevdev i2c-tools git
sudo modprobe i2c-dev
sudo i2cdetect -l

mkdir ~/Git
cd Git

git clone https://github.com/mohamed-badaoui/asus-touchpad-numpad-driver
cd asus-touchpad-numpad-driver
sudo ./install.sh

#m433ia
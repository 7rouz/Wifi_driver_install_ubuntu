#!/bin/bash

read -p "this installation will reboot your computer once it's over. Press any key to carry-on or Ctrl+c to cancel"

sudo apt-get install --reinstall git linux-headers-$(uname -r) build-essential dkms
git clone https://github.com/neurobin/MT7630E/
cd MT7630E/
make
sudo make install
sudo reboot

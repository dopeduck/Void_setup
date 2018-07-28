#!/bin/bash/
set -e

#Dwm and dependencies
sudo xbps-install -y base-devel libX11-devel libXft-devel libXienarama-devel

sudo xbps-install -y git
git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/st

#Xorg
sudo xbps-install -y xorg

#!/usr/bin/env bash
set -e 

sudo xbps-install -S `cat dep_p`
git clone https://github.com/tryone144/compton.git

cd compton

make
make docs
sudo make install

exit

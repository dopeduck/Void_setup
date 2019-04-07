#!/usr/bin/env bash
set -e 

now=`pwd`
#sudo xbps-install -S `cat dep_p`
if [[ -f ~/.packages ]]; then
  cd ~/.packages/compton
  git clone https://github.com/tryone144/compton.git
else
  mkdir -p ~/.packages
  cd ~/.packages/compton
  git clone https://github.com/tryone144/compton.git
fi

make
make docs
sudo make install

cd $now

exit

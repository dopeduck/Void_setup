#!/usr/bin/env bash
set -e 

sudo xbps-install -S `cat dep_p`
if [[ -f ~/.packages ]]; then
  git clone https://github.com/tryone144/compton.git
else
  mkdir -p ~/.packages
  git clone https://github.com/tryone144/compton.git
fi

cd ~/.packages/compton
make
make docs
sudo make install

exit

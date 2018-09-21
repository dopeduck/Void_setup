#!/bin/bash
set -e

cd ~/
mkdir -p suckless/
cd suckless
git clone https://github.com/dopeduck/st
cd st
sudo make clean install
cd

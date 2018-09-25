#!/bin/bash
#setting up git
#https://www.atlassian.com/git/tutorials/setting-up-a-repository/git-config

# git init
git config --global user.name "Pratyush Sureka"
git config --global user.email "pratsure@gmail.com"
sudo git config --system core.editor nano
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=25000'
git config --global push.default simple


echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"

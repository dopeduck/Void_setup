#!/bin/bash/
set -e

#Adding mirror
echo 'repository=https://repo2.voidlinux.eu/current/' > /etc/xbps.d/my-remote-repo.conf

#Syncing and updating
xbps-install -Su

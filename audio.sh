#!/bin/bash/
set -e

#Audio
sudo xbps-install -S alsa-utils pulseaudio ConsoleKit2

#services
sudo ln -s /etc/sv/alsa /var/service/
sudo ln -s /etc/sv/cgmanager /var/service/
sudo ln -s /etc/sv/consolekit /var/service/

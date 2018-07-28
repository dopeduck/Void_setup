#!/bin/bash
set -e

sudo xbps-install -Sy tlp powertop
ln -s /etc/services/tlp /var/service/

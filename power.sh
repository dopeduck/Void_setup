#!/bin/bash
set -e

xbps-install -Sy tlp powertop
ln -s /etc/services/tlp /var/service/

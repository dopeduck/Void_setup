#!/bin/bash/
set -e

#Becoming Root
sudo

#Adding mirror
echo 'repository=https://repo2.voidlinux.eu/current/' > /etc/xbps.d/my-remote-repo.conf

#Syncing and updating
xbps-install -S
xbps-install -Su

#Xorg
xbps-install -S xorg

#Dwm and dependencies
xbps-install -S base-devel libX11-devel libXft-devel libXienarama-devel
mkdir ~/Github
cd ~/Github
git clone https://git.suckless.org/dwm
cd dwm
make
make clean install
cd
touch .xinitrc
xbps-install i3-gaps
echo 'exec i3' > .xinitrc
startx

rm .xinitrc
echo 'exec dwm' > .xinitrc

#st terminal

cd ~/Github
git clone https://git.suckless.org/st
cd st
make
make clean install

#NetworkManager
xbps-install -S NetworkManager network-manager-applet gnome-icon-theme inetutils-ifconfig gnome-keyring

echo 'polkit.addRule(function(action, subject) {
  if (action.id.indexOf("org.freedesktop.NetworkManager.") == 0 && subject.isInGroup("network")) {
    return polkit.Result.YES;
  }
});' > /etc/polkit-1/rules.d/50-org.freedesktop.NetworkManager.rules

#Adding user to network group
gpasswd -a $USER network

#Removing unnecessary services
sudo rm -fr /var/service/dhcpcd
sudo rm -fr /var/service/wpa_supplicant

#Adding Services
sudo ln -s /etc/sv/NetworkManager /var/service
sudo ln -s /etc/sv/dbus /var/service


#Audio
xbps-install -S alsa-utils pulseaudio ConsoleKit2

#services
ln -s /etc/sv/alsa /var/service/
ln -s /etc/sv/cgmanager /var/service/
ln -s /etc/sv/consolekit /var/service/

#basic tools
xbps-install -Sy ranger /
    htop /
    nvim /
    feh /
    mpv /
    qutebrowser /
    firefox /
    python-pip /
    python3.4-pip /
    neofetch /
    w3m /
    w3m-img /
    ffmpeg /
    ffmpegthumbnailer /
    poppler /
    ImageMagick /
    acpi /
    font-sourcecodepro /
    font-awesome5 /
    mpc /
    mpd /
    ncmpcpp /
    newsboat /
    neomutt /
    redshift /
    noto-fonts-ttf /
    noto-fonts-emoji /
    scrot /
    unrar /
    unzip /
    wget /
    curl /
    zathur

#TLP
xbps-install -Sy tlp
ln -s /etc/services/tlp /var/service/

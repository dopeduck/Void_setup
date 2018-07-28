#!/bin/bash/
set -e


#basic tools
sudo xbps-install -Sy ranger \
    htop \
    nvim \
    feh \
    mpv \
    qutebrowser \
    firefox \
    python-pip \
    python3.4-pip \
    neofetch \
    w3m \
    w3m-img \
    ffmpeg \
    ffmpegthumbnailer \
    poppler \
    ImageMagick \
    acpi \
    mpc \
    mpd \
    ncmpcpp \
    newsboat \
    neomutt \
    redshift \
    noto-fonts-ttf \
    noto-fonts-emoji \
    scrot \
    unzip \
    wget \
    curl \

pip3 install neovim --user

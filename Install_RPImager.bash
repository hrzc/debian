#!/bin/bash

# For more information, visit:
# <https://github.com/raspberrypi/rpi-imager>

# Get dependencies
sudo apt install --no-install-recommends build-essential devscripts debhelper cmake git libarchive-dev libcurl4-gnutls-dev liblzma-dev \
    qtbase5-dev qtbase5-dev-tools qtdeclarative5-dev libqt5svg5-dev qttools5-dev libgnutls28-dev \
    qml-module-qtquick2 qml-module-qtquick-controls2 qml-module-qtquick-layouts qml-module-qtquick-templates2 qml-module-qtquick-window2 qml-module-qtgraphicaleffects

# Get the source
git clone --depth 1 https://github.com/raspberrypi/rpi-imager

# For building on a device with limited memory
# export DEB_BUILD_OPTIONS="parallel=1"

# Build the Debian package
cd rpi-imager
debuild -uc -us

# Install it with `apt`
cd ..
sudo apt install ./rpi-imager*.deb

# TODO: Clean up the directory
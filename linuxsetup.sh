#!/bin/bash

echo "Making sure all subodules are cloned"
sudo git submodule update --init --recursive
sudo git submodule update --recursive --remote

echo "Installing dependencies"
sudo apt-get update
sudo apt-get --assume-yes install build-essential cmake cmake-gui git
sudo apt-get --assume-yes install pkg-config
sudo apt-get --assume-yes install libsdl2-dev libglew-dev libdevil-dev libjsoncpp-dev libcurl4-openssl-dev libminizip-dev p7zip-full xsltproc docbook-xsl libopenal-dev libogg-dev libvorbis-dev libunwind-dev
sudo apt-get --assume-yes install ccache fontconfig libfreetype6-dev clang-format
sudo apt-get --assume-yes install python2 default-jdk lld

echo "Done"

#grep -qxF 'export LD=ld.gold' ~/.bashrc || echo 'export LD=ld.gold' >> ~/.bashrc

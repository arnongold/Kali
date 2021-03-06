#!/usr/bin/env bash

apt-get update
apt-get --yes install build-essential pkg-config git libnl-genl-3-dev libssl-dev 
cd /tmp
git clone https://github.com/sensepost/hostapd-mana
cd hostapd-mana
make -C hostapd
mv /tmp/hostapd-mana/hostapd/ /usr/lib/mana-toolkit
cd /usr/share/
git clone --depth 1 https://github.com/sensepost/mana.git
mv mana mana-toolkit
mkdir /etc/mana-toolkit/
mv mana-toolkit/run-mana/conf/*.conf /etc/mana-toolkit/

# configuration file
# edit with sudo leafpad
# /etc/mana-toolkit/hostapd-mana.conf   <== change host mac
# Scripts location
# /usr/share/mana-toolkit/run-mana/start-nat-simple.sh   <== change upstream 

# bash /usr/share/mana-toolkit/run-mana/start-nat-simple.sh 




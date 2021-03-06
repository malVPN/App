#!/bin/bash
############################################################
# OpenVPN 2.5 CRACKED Installer
# Author: Khun Htetz Naing
# Email: khunhtetznaing@gmail.com
############################################################

if [ `whoami` != root ]; then
    echo "ERROR: You need to run the script as user root or add sudo before command."
    exit 1
fi

OPENVPN_FILE="https://github.com/KhunHtetzNaing/Files/releases/download/malVPN/openvpn-as-2.5-CentOS7.x86_64.rpm"
CRACK_FILE_PATH="/usr/local/openvpn_as/lib/python2.7/site-packages/pyovpn-2.0-py2.7.egg"
CRACK_FILE_LINK="https://github.com/KhunHtetzNaing/Files/releases/download/malVPN/pyovpn-2.0-py2.7.egg"
SH_PATH="/usr/local/openvpn_as/bin/ovpn-init"

echo "- Installing OpenVPN 2.5"
sudo rpm -i --force "$OPENVPN_FILE" > /dev/null 2>&1

echo "- Prepare for Crack"
rm -f "$CRACK_FILE_PATH" > /dev/null 2>&1

echo "- Downloading crack file"
curl "$CRACK_FILE_LINK" -L -o "$CRACK_FILE_PATH" > /dev/null 2>&1

echo "- Start Cracking"
sh "$SH_PATH" <<< "DELETE
yes

1








" > /dev/null 2>&1

echo "- Set password for openvpn"
passwd openvpn

#!/bin/bash

echo Easily integrate OpenVPN to simplemining made easy by Ari


apt update

apt install apt-transport-https

wget https://swupdate.openvpn.net/repos/openvpn-repo-pkg-key.pub

apt-key add openvpn-repo-pkg-key.pub

wget -O /etc/apt/sources.list.d/openvpn3.list https://swupdate.openvpn.net/community/openvpn3/repos/openvpn3-$DISTRO.list

apt update

apt install openvpn

apt install openvpn-systemd-resolved

mkdir /etc/openvpnservers/

echo Insert link to ovpn file!

read link1

wget $link1 -P /etc/openvpnservers/

echo link to service name
wget https://github.com/AriBerisha/SimpleMining-OpenVPN/blob/main/simpleminingvpn.txt -P /etc/systemd/system/

mv /etc/systemd/system/simpleminingvpn.txt /etc/systemd/system/simpleminingvpn.service

systemctl daemon-reload

systemctl enable simpleminingvpn.service







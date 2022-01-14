#!/bin/bash

echo Easily integrate OpenVPN to simplemining made easy by Ari

echo Updating...

apt update

echo Installing requirements

apt install apt-transport-https



wget https://swupdate.openvpn.net/repos/openvpn-repo-pkg-key.pub

apt-key add openvpn-repo-pkg-key.pub



wget -O /etc/apt/sources.list.d/openvpn3.list https://swupdate.openvpn.net/community/openvpn3/repos/openvpn3-bionic.list


apt update

apt install openvpn

apt install openvpn-systemd-resolved
echo Done installing requirements...


mkdir /etc/openvpnservers/

echo Insert link to ovpn file!

read link1

wget ${link1} -O /etc/openvpnservers/Server.ovpn

echo Getting service file from github...
wget https://github.com/AriBerisha/SimpleMining-OpenVPN/blob/main/simpleminingvpn.txt -P /etc/systemd/system/

echo Done!

echo Creating Service...

mv /etc/systemd/system/simpleminingvpn.txt /etc/systemd/system/simpleminingvpn.service

systemctl daemon-reload

systemctl enable simpleminingvpn.service


echo Done!







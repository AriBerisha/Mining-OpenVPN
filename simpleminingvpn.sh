#!/bin/bash

echo Easily integrate OpenVPN to simplemining made easy by Ari

echo Updating...

apt update

echo Installing requirements

apt install apt-transport-https



wget https://swupdate.openvpn.net/repos/openvpn-repo-pkg-key.pub

apt-key add openvpn-repo-pkg-key.pub

PS3='Choose Your OS: '
versions=("debian11" "ubuntu18" "ubuntu21" "Quit")
ubuntu=18
select ver in "${versions[@]}"; do
    case $ver in
        "debian11")
            echo "You chose Debian 11"
            # optionally call a function or run some code here
            ubuntu=bullseye
            break
            ;;
        "ubuntu18")
            echo "you chose Ubuntu 18.04"
            # optionally call a function or run some code here
            ubuntu=bionic
            break
            ;;
        "ubuntu21")
            echo "you chose Ubuntu 21.04"
            # optionally call a function or run some code here
            ubuntu=hirsute
            break
            ;;
        "Quit")
            echo "User requested exit"
            exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done



wget -O /etc/apt/sources.list.d/openvpn3.list https://swupdate.openvpn.net/community/openvpn3/repos/openvpn3-$ubuntu.list


apt update

apt install openvpn

apt install openvpn-systemd-resolved
echo Done installing requirements...

echo "Creating directory /etc/openvpnservers"
mkdir /etc/openvpnservers/
echo Done

echo "Creating NordVPN login.conf if you want to use it"

touch /etc/openvpnservers/login.conf



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







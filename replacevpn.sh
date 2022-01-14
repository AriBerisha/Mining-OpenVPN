#!/bin/bash

echo "Please paste in the link to the .ovpn file!"

read link1

wget ${link1} -O /etc/openvpnservers/Server.ovpn

echo Done!
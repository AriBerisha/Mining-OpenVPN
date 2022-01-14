# SimpleMining-OpenVPN
Easily install VPN on simplemining


# Instructions
Tested on Ubuntu 18.04 Based Mining OS's

1. To be safe from any errors run the file as sudo
2. Run the following commands on the directory where the bash script is
```
    sudo chmod u+x simpleminingvpn.sh
    sudo ./simpleminingvpn.sh
```

3. Insert link to ovpn file, script uses wget and you can use something like Dropbox,Drive,Transfer.sh
4. Reboot if any problems and you're set!
5. If you run into issues with network, to undo just do systemctl disable simpleminingvpn.service

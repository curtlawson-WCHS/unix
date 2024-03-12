#!/bin/bash
clear
echo ""
/usr/bin/figlet "Checking for updates..." | /usr/games/cowsay -f tux -n | lolcat -a -s 400
sudo apt update

/usr/bin/figlet "Installing updates..." | /usr/games/cowsay -f tux -n | lolcat -a -s 400
sudo apt upgrade -y

/usr/bin/figlet "Cleaning up (1/2)..." | /usr/games/cowsay -f tux -n | lolcat -a -s 400
sudo apt autoremove -y

/usr/bin/figlet "Running upgrade..." | /usr/games/cowsay -f tux -n | lolcat -a -s 400
sudo apt full-upgrade -y

/usr/bin/figlet "Cleaning up (2/2)..." | /usr/games/cowsay -f tux -n | lolcat -a -s 400
sudo apt autoremove -y

echo ""
/usr/bin/neofetch
exit

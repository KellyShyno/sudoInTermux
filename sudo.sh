#!/bin/bash
#KellyShyno
#sudoInTermux

 echo ""
 echo -e "\e[1;31msudoInTermux\e[0m""\e[1;35m(&_&)\e[0m"
 echo -e "\e[1;31mversion: 1.0.0\e[0m"
 echo -e "\e[1;33mvk: https://vk.com/linuxkelly\e[0m"
 echo ""
 echo -e "\e[1;32mInstalling sudo in termux..\e[0m"

cd ~
git clone https://gitlab.com/st42/termux-sudo
cd termux-sudo/

 echo ""
 echo -e "\e[1;32mInstalling a dependency needed for sudo\e[0m"

pkg install ncurses-utils
cat sudo > /data/data/com.termux/files/usr/bin/sudo
chmod 700 /data/data/com.termux/files/usr/bin/sudo

echo ""
echo -e "\e[1;32msudo installed\e[0m"
echo -e "\e[1;33mwrite 'sudo su' to take an access to root\e[0m"
echo -e "\e[1;36mbreak a leg\e[0m""\e[1;35m(&_&)\e[0m"

#!/bin/bash
#KellyShyno
#sudoInTermux
#version 2.0.0

chmod -R a+rx *;



banner()
{
clear;
sleep 0.16;
echo -e '\e[1;35m               _      ___     _____\e[0m';
echo -e '\e[1;35m ___ _   _  __| | ___|_ _|_ _|_   _|__ _ __ _ __ ___  _   ___  __\e[0m';
echo -e '\e[1;30m/ __| | | |/ _` |/ _ \| || "_ \| |/ _ \ "__| "_ " _ \| | | \ \/ /\e[0m';
echo -e '\e[1;30m\__ \ |_| | (_| | (_) | || | | | |  __/ |  | | | | | | |_| |>  <\e[0m';
echo -e '\e[1;35m|___/\__,_|\__,_|\___/___|_| |_|_|\___|_|  |_| |_| |_|\__,_/_/\_\\\e[0m';
echo "";
echo -e "\e[1;31mversion: 2.0.0\e[0m";
echo "";
}



error()
{
clear;
echo -e "\e[1;31mERROR: write the correct sign..\e[0m";
sleep 0.6;
}



input()
{
echo "";
echo -en "\e[1;35m (\e[0m""\e[1;30m#\e[0m""\e[1;35m_\e[0m""\e[1;30m#\e[0m";
echo -en "\e[1;35m)\e[0m" "\e[1;31m> \e[0m";
}



aboutUs()
{
banner;
echo -en "\e[1;35m⊹ \e[0m";
echo -e "\e[1;30mProgram:\e[0m" "\e[1;4;35msudoInTermux\e[0m";
echo -en "\e[1;35m⊹ \e[0m";
echo -e "\e[1;30mAuthor:\e[0m" "\e[1;4;35mKellyShyno\e[0m";
echo -en "\e[1;35m⊹ \e[0m";
echo -e "\e[1;30mVk:\e[0m" "\e[1;4;35mhttps://vk.com/linuxkelly\e[0m";
echo "";

#inputBlock
echo -e "\e[1;30m================\e[0m";
echo -en '\e[1;30m|  \e[0m'"\e[1;30m[ \e[0m""\e[1;31mx\e[0m""\e[1;30m ] \e[0m";
echo -e "\e[1;31mback\e[0m"'\e[1;30m  |\e[0m';
echo -e "\e[1;30m================\e[0m";
input;
  read backToShyno
    case $backToShyno in
"x") shyno; ;;
*) error; aboutUs; ;;
    esac;
}



sudoReinstall()
{
banner;
  if [[ -d data/termux-sudo ]]; then
rm -rf data/termux-sudo;
  else
echo
  fi;
internetChecking;
}



sudoAlreadyInstalling()
{
  if [[ -f /data/data/com.termux/files/usr/bin/sudo ]]; then
banner;
echo -e "\e[1;31msudo\e[0m" "\e[1;35malready installed\e[0m";
echo "";
sleep 2.5;
shyno;
  else
internetChecking;
  fi;
}



sudoInstalling()
{
cd data/
git clone https://gitlab.com/st42/termux-sudo
cd termux-sudo/
pkg install ncurses-utils;
sleep 5
cat sudo > /data/data/com.termux/files/usr/bin/sudo
cd ..
chmod 700 /data/data/com.termux/files/usr/bin/sudo
banner;
echo -e "\e[1;31msudo\e[0m" "\e[1;35m$already\e[0m";
echo -en "\e[1;35mwrite\e[0m" "\e[1;31m'sudo su' \e[0m";
echo -e "\e[1;35mto take an access to\e[0m" "\e[1;31mroot\e[0m";
echo "";
echo -e "\e[1;30menter any sign to continue\e[0m";
sleep 2;
 read tmp
    case $tmp in
"") shyno; ;;
*) shyno; ;;
    esac;
}



internetChecking()
{
ping -c 1 google.com | grep "ping" > /dev/null;
#checking
    case $? in
0) sudoInstalling; ;;
*) banner; echo -e "\e[1;35mInternet not available\e[0m"; sleep 2.5; shyno; ;;
    esac;
}



shyno()
{
banner;
echo -e "\e[1;35m/ \e[0m""\e[1;30m1\e[0m""\e[1;35m / \e[0m""\e[1;35minstall sudo\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;30m2\e[0m""\e[1;35m / \e[0m""\e[1;35mreinstall sudo\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;30m3\e[0m""\e[1;35m / \e[0m""\e[1;35mabout us\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;30mu\e[0m""\e[1;35m / \e[0m""\e[1;35mupdate\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;31mx\e[0m""\e[1;30m / \e[0m""\e[1;31mexit\e[0m";
input;
 read shy
    case $shy in
1) already="installed"; sudoAlreadyInstalling; ;;
2) already="reinstalled"; sudoReinstall; ;;
3) aboutUs; ;;
"u") ./data/update/update.sh; shyno; ;;
"x") echo ""; exit 0; ;;
*) error; shyno; ;;
    esac;
}
shyno;

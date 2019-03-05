#! /bin/bash

if [ $(tput colors) ]; then
	green="\e[32m"
	red="\e[31m"
	endcolor="\e[39m"
fi

echo ;
echo " INSTALL CURL "
(
  sudo apt install -y curl
) &> /dev/null && echo -e "$green INSTALLATION  OK $endcolor" || echo -e "$red INSTALLATION  FAILED $endcolor"

echo ;
echo " INSTALL VIRTUALBOX "
(
  sudo apt install -y virtualbox
) &> /dev/null && echo -e "$green INSTALLATION  OK $endcolor" || echo -e "$red INSTALLATION  FAILED $endcolor"

echo ;
echo " INSTALL OPENJDK 8 "
(
  sudo add-apt-repository -y ppa:openjdk-r/ppa
  sudo apt-get update
  sudo apt-get install -y openjdk-8-jdk
) &> /dev/null && echo -e "$green INSTALLATION  OK $endcolor" || echo -e "$red INSTALLATION  FAILED $endcolor"

echo ;
echo " INSTALL LIBS GRAPHICS "
(
  sudo apt-get install -y gcc-multilib lib32z1 lib32stdc++6
) &> /dev/null && echo -e "$green INSTALLATION  OK $endcolor" || echo -e "$red INSTALLATION  FAILED $endcolor"

echo ;
echo " INSTALL UNZIP "
(
  sudo apt install -y unzip
) &> /dev/null && echo -e "$green INSTALLATION  OK $endcolor" || echo -e "$red INSTALLATION  FAILED $endcolor"


#! /bin/bash

if [ $(tput colors) ]; then
	green="\e[32m"
	red="\e[31m"
	endcolor="\e[39m"
fi

echo ;
echo " INSTALL NVM "
(
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
  source ~/.bashrc
) &> /dev/null && echo -e "$green INSTALLATION  OK $endcolor" || echo -e "$red INSTALLATION  FAILED $endcolor"

echo ;
echo " DOWNLOAD SDK "
(
  wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
  unzip sdk-tools-linux-4333796.zip
  mkdir -p ~/Android/Sdk
  mv tools ~/Android/Sdk
) &> /dev/null && echo -e "$green INSTALLATION  OK $endcolor" || echo -e "$red INSTALLATION  FAILED $endcolor"

echo ;
echo " CONFIGURE SDK "
  mkdir ~/.android
  touch ~/.android/repositories.cfg
  ~/Android/Sdk/tools/bin/sdkmanager --update
  ~/Android/Sdk/tools/bin/sdkmanager "platform-tools" "platforms;android-28" "build-tools;28.0.3" "extras;google;m2repository" "extras;android;m2repository"

echo ;
echo " LICENSES ANDROID "
  ~/Android/Sdk/tools/bin/sdkmanager --licenses


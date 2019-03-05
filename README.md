# Environment installation react native

scripts for prepare environment react native


### Install Dependencies Environment
- start script **install_environment_react_native.sh** this form.
```sh
$ sudo install_environent_react_native.sh
```

## **The following step use without root**

### Install NVM for use react native
-
```sh
$ ./install_dependencies_react_native.sh
```

### Verified if nvm is install your machine
- after verified version, close and reopen your terminal
```sh
$ nvm -v
```

### Install **NODE** and **REACT NATIVE**
```sh
$ nvm install node
$ npm install -g react-native-cli
```

After step before, now access this website [Genymontion](https://genymotion.com/fun-zone), create account if you don't use this service, after create confirm in your email and download version without virtualbox.

### Add SDK in PATH your system
- add commands in .bash_profile in root path user: **ex: ~/.bash_profile**
```sh
export ANDROID_HOME=/home/{your user}/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
```
```sh
$ vim .bash_profile
```

### Install Genymotion
- enter folder you download this program and execute this command
- enter name correct for you version download
- confirm the installation only your use
```sh
$ sudo chmod u+x genymotion-3.0.1-linux_x64.bin
$ ./genymotion-3.0.1-linux_x64.bin
```

### Configure Genymotion with adb
- start genymotion and click **Genymotion** enter in settings
- after enter the tab **ADB**
- use this option **Use custom Android SDK tools**
- enter this path **/home/*{you user}*/Android/Sdk** (OBS: replace *{you user}* for ex: /home/*laugusto*/Android/Sdk)

### Download android emulator
- download any version greater that 6

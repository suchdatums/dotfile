#!/bin/bash -i

sudo apt update -y
sudo apt upgrade -y

# for debian... (?) how to check if it is already installed?
sudo apt install git -y

rm -rf Documents/ Music/ Pictures/ Videos/ Templates/ Public/

mv .bash_aliases ~/.bash_aliases

sudo apt-get install cmatrix
sudo apt-get install tmux
sudo apt-get install batcat
sudo apt-get install rpi-imager

sudo reboot


# SETUP VS CODE
```
git config --global user.name "..." 
git config --global user.email "..." 
git config --list 
# ~/.gitconfig

sudo apt-get install -y gnome-keyring
```


# usage
```
batcat
batcat -p TURNS OFF DECORATORS
batcat -r 1:50 READ LINES 1-50 or... :50 (1-50) or... 50: (50 to EOF)
batcat --list-themes
batcat --theme ansi-dark
```


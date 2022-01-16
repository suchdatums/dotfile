# guide-walker

Use the guide, Luke!


inspired by: https://github.com/geohot/configuration

# VS CODE
```
git config --global user.name "..."
git config --global user.email "..."
git config --list
~/.gitconfig
```

# install gnome-keyring
```
sudo apt-get install -y gnome-keyring
```




# ...

#edits console font size (desktop mode)
```
nano .config/lxterminal/lxterminal.conf
```

#https://www.datafix.com.au/BASHing/2020/02/19.html
#what does this do?
#showconsolefont



# enable and start SSH
```
sudo systemctl enable ssh
sudo systemctl start ssh
```



# install

<?> did you touch ssh and cp wpa_supplicant.conf <?>

```
rm -rf Bookshelf/ Documents/ Downloads/ Music/ Pictures/ Public/ Templates/ Videos/

sudo raspi-config
```

- System - auto login, console
- hostname
- activate interfaces

```
sudo apt update -y
sudo apt upgrade -y
```








# install

<?> did you touch ssh and cp wpa_supplicant.conf <?>

```
rm -rf Bookshelf/ Documents/ Downloads/ Music/ Pictures/ Public/ Templates/ Videos/

sudo raspi-config
```

- System - auto login, console
- hostname
- activate interfaces

```
sudo apt update -y
sudo apt upgrade -y
```


# shit I like
```
sudo apt-get install tmux bat -y
```

# usage
```
batcat
batcat -p TURNS OFF DECORATORS
batcat -r 1:50 READ LINES 1-50 or... :50 (1-50) or... 50: (50 to EOF)
batcat --list-themes
batcat --theme ansi-dark
```




# Dotfiles

https://github.com/sundowndev/dotfiles

Run the install script :

``` bash
curl -sSL https://raw.githubusercontent.com/sundowndev/dotfiles/master/install.sh | bash
```



















































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


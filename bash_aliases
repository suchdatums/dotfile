export PS1="\n\e[1;31m┌──\e[1;32m(\u@\h) \e[1;35m[\w]\n\e[1;31m└─\e[1;33m\$ \e[0m"

# function go {
#     builtin cd "$@" && clear && ls -gop --human-readable --sort=extension --group-directories-first --color=auto
# }
# function ggg { if [ -z $1 ]; then echo "go where??"; else echo $1; fi; }

function go {
    if [ -z $1 ]; then
        echo "go where??"
    else
        builtin cd "$1" && clear && ls -gop --human-readable --sort=extension --group-directories-first --color=auto
    fi
}

function temp {
    tc=$(echo $(/opt/vc/bin/vcgencmd measure_temp))
    tc=$(echo $tc | grep -Eo "[0-9]+\.[0-9]+")
    tf=$(echo "scale=2;((9/5) * $tc) + 32"|bc)
    echo "$tc C = $tf F"
}
function tempc2f {
    echo "scale=2;((9/5) * $1) + 32" | bc;
}
function when {
    echo $(date -d @$1)
}
# alias sec="echo $EPOCHSECONDS"
function now {
    echo $(date +%s)
}

# <3

alias dot="cd ~/ && ~/.getdot"

# update go function above if you update list
alias l="ls -gop --human-readable --sort=extension --group-directories-first --color=auto"
alias all="ls -gopal"
alias show="tree -L 2"
alias files="ls -1p | grep -v /"

alias up="go .."
alias home="go ~/"

# --smooth doesn't work anymore??
# --morespace also...?
alias nano="nano --mouse --linenumbers --nohelp --softwrap"
# WARNING: this overwrites "/usr/bin/view" which is vi
alias view="nano --view"

alias consoletext="sudo dpkg-reconfigure console-setup"
#alias edita="e ~/.bash_aliases && source ~/.bash_aliases"
alias editdisp="sudo nano --smooth /boot/config.txt"
alias editfont="nano ~/.fig/lxterminal/lxterminal.conf"
alias edittty="sudo dpkg-reconfigure console-setup"

#TODO using endoffile with single quotes eliminates variables expansion.. TEST IT
#alias mywifi="echo \"wifi $(ifconfig wlan0 | grep inet | awk '{ print $2 }')\""
#alias myeth="echo \"ethe $(ifconfig eth0 | grep inet | awk '{ print $2 }')\""
alias ip="hostname -I | cut -d ' ' -f 1"

alias testv="sh -v"
# won't expand variables
alias testx="sh -v"

#https://raspberrypi.stackexchange.com/questions/59898/how-can-i-blank-the-screen-from-the-command-line-over-ssh
alias version="cat /etc/os-release"

#https://raspberrypi.stackexchange.com/questions/59898/how-can-i-blank-the-screen-from-the-command-line-over-ssh
#if doesn't work... run this: xset -display :0 s blank
alias wakeup="xset -display :0 dpms force on"
alias goodnight="xset -display :0 dpms force off"
alias sleep="cmatrix -abC yellow"

# rpi specific
alias mouselag="sudo echo \"usbhid.mousepoll=8\" >> /boot/cmdline.txt && sudo nano /boot/cmdline.txt"
alias cpuspeed="sudo cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

# custom for BECOOL
#alias logs="tail -f ~/*.log"
#alias monitor="tail -f -q ~/*.log"


# PARSE THESE AND DELETE
#alias restart='sudo reboot'
#alias shutdown='sudo halt'
#alias apt-get='sudo apt-get'
#alias fuck='sudo'
#alias root='sudo su -'
#alias sp='source ~/.bash_profile'
#alias nerd='vim +NERDTree'
#alias cpdir='cp -a'
#alias ll='ls -lv --group-directories-first'
#alias mkdir='mkdir -p'
#alias ds='dirs -v'
#alias df='df -kTh'
#alias gitags='ctags -R -f ./.git/tags .'
#alias bn='git checkout -B'
#alias b='git branch'
#alias gc='git checkout'

#echo "                                          hey... listen!!"

function go {
    builtin cd "$@" && clear && list
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



# 5.55!!! <3
alias dot="./getdot"
alias c="clear"
alias lc="clear && list"
alias list="ls -gop --human-readable --sort=extension --group-directories-first --color=auto"
alias files="ls -1p --color=auto | grep -v /"
# use the go function in .bashrc

# --smooth doesn't work anymore??
# --morespace also...?
alias e="nano --mouse --linenumbers --nohelp --softwrap"
alias v="e --view"

alias consoletext="sudo dpkg-reconfigure console-setup"
alias edita="e ~/.bash_aliases && source ~/.bash_aliases"
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
alias logs="tail -f ~/*.log"
alias monitor="tail -f -q ~/*.log"
alias helpme="v ~/helpme"


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

#!/bin/bash

# remember, if I use single quotes around end-of-file, variable exansion is suppressed
cat << 'EOF' >> ~/.bashrc

############## MY OWN, MY PRECIOUS ################
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

export PS1="\n\e[1;31m┌──\e[1;32m(\u@\h) \e[1;35m[\w]\n\e[1;31m└─\e[1;33m\$ \e[0m"

EOF

echo "run: source ~/.bashrc"

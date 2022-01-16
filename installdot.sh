#!/bin/bash

# remember, if I use single quotes around end-of-file, variable exansion is suppressed
cat << 'EOF' >> ~/.bashrc

./functions
export PS1="\n\e[1;31m┌──\e[1;32m(\u@\h) \e[1;35m[\w]\n\e[1;31m└─\e[1;33m\$ \e[0m"
# yes, you are up to date ;)

EOF


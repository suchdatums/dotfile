#!/bin/bash

sudo cat << EOF >> /etc/profile

# trailing slash or not? $USER instead of pi?
export becool=/home/pi/becool


echo
echo
echo "#################################"
echo "#                               #"
echo "# hey... listen!!               #"
echo "#    ..use these aliases:       #"
echo "#                               #"
echo "# (*)  helpme                   #"
echo "# (*)  monitor / logs           #"
echo "# (*)                           #"
echo "#                               #"
echo "#                               #"
echo "#                               #"
echo "#################################"
echo

EOF
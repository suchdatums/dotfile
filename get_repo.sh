#!/bin/bash

# the "one-liner"
# git clone --depth=1 https://github.com/suchdatums/easy && rm -rf ./easy/.git

# aka - git clone this this and put it RIGHT HERE... not in a directory with the git repo name
# git clone --depth=1 $url .

#read repo
repo="dotfile"
url="https://github.com/suchdatums/$repo"
git clone --depth=1 $url .
rm -rf ./$repo/.git
#mv -f ./$repo/* .
#rm -r ./$repo/

#repo="DOMinate"
#rl="https://github.com/suchdatums/$repo"
#git clone --depth=1 $url
#rm -rf ./$repo/.git
#rm ./$repo/.gitignore
#mv -f ./$repo/* .
#rm -r ./$repo/

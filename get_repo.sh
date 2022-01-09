#!/bin/bash

repo="dotfile"
url="https://github.com/suchdatums/$repo"
git clone --depth=1 $url
rm -rf ./$repo/.git
mv -f ./$repo/* .
rm -r ./$repo/

mv bash_aliases .bash_aliases
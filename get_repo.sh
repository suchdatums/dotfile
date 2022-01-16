#!/bin/bash -i

echo "what repo???"
read repo
url="https://github.com/suchdatums/$repo"
git clone --depth=1 --recurse-submodules $url
rm -rf ./$repo/.git
rm ./$repo/.gitignore

echo ">>> DO YOU WANT TO INSTALL IN THE HOME FOLDER?"
echo "type: yes"
read inp
if [-ne inp "yes"] then
exit
fi
mv -f ./$repo/* .
rm -r ./$repo/

#!/bin/bash -i

echo "what repo???"
read repo

url="https://github.com/suchdatums/$repo"
git clone --depth=1 $url
rm -rf ./$repo/.git

# keep it in it's folder...

#mv -f ./$repo/* .
#rm -r ./$repo/
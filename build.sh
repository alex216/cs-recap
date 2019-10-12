#!/bin/bash

echo "di0habara!" | sudo -S gitbook update
gitbook init
sudo gitbook install
gitbook build . docs
rm -rf _book && rm -rf etc
git add .
git commit -m "build a new version"
git push origin
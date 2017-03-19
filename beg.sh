#!/bin/bash

echo -n "What do you want to add to the config file [ENTER]: "
read name
echo -n "Repo name: "
read pero


echo "# $name" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/Zeko369/$pero.git
git push -u origin master

#!/bin/bash
mkdir solution123
cd solution123
git init
echo "Link?"
read link
echo "Token?"
read token
v1=${link:0:8}
v2=${link:8:${#link}-8}
v3=:x-oauth-basic@
newlink=$v1$token$v3$v2
git clone $newlink
var1=$(find . -name 'commit-msg' -print)
echo "New string?"
read var2
sed -i -e "s/DEVOPS/$var2/g" $var1
repo=$(awk -F/ '{print $NF}' <<< $link)
repo_name=$(awk -F. '{print $1}' <<< $repo)
echo repo
echo repo_name
cd repo_name
git add .
git commit -m 'with only link'
git push -u origin master
cd ../..
rm -rf solution123

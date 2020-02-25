#!/bin/bash
echo "Script starting..."
mkdir solution123
cd solution123
git init
#token=$(cat auth_file.txt)
echo "enter token"
read token
echo "enter link"
read link
v1=${link:0:8}
v2=${link:8:${#link}-8}
v3=:x-oauth-basic@
newlink=$v1$token$v3$v2
echo $newlink
#https://github.com/shishirkhandelwal29/project1.git
#git clone https://$token:x-oauth-basic@github.com/shishirkhandelwal29/project1.git
git clone $newlink
var1=$(find . -name 'commit-msg' -print)
cat var1
echo "Enter replacement string"
read var2
echo "DEVOPS would be replaced with $var2\n"
sed -i -e "s/DEVOPS/$var2/g" $var1
cd project1
git add .
git commit -m 'with only link'
git push -u origin master
echo "Script terminating..."
echo "Finish"

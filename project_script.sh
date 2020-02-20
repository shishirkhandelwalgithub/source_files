#!/bin/bash
echo "Script starting..."
mkdir solution123
cd solution123
git init
#token=$(cat auth_file.txt)
echo "enter token"
read token
git clone https://$token:x-oauth-basic@github.com/shishirkhandelwal29/project1.git
var1=$(find . -name 'commit-msg' -print)
echo "Enter replacement string"
read var2
echo "DEVOPS would be replaced with $var2\n"
sed -i -e "s/DEVOPS/$var2/g" $var1
cd project1
git add .
git commit -m 'new_commit_hope1'
git push -u origin master
echo "Script terminating..."




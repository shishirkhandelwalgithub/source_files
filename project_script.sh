#!/bin/bash
echo "Script starting..."
mkdir clone_folder
cd clone_folder
git init
#git clone https://github.com/shishirkhandelwal29/project1.git
#git clone https://918f481b768dce46d89756998680493473906f17:x-oauth-basic@github.com/shishirkhandelwal29/project1.git
var1=$(find . -name 'commit-msg' -print)
echo "enter replacement string"
read var2
sed -i -e "s/DEVOPS/$var2/g" $var1
cd project1
git add .
git commit -m ' commit the changes into repo'
git push -u origin master
echo "Script terminating..."


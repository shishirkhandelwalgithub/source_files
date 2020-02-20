#!/bin/bash
echo "Script starting..."
mkdir clone_folder
cd clone_folder
git init
git clone https://github.com/shishirkhandelwal29/project1.git
var1=$(find . -name 'commit-msg' -print)
echo "enter replacement string"
read var2
sed -i -e "s/DEVOPS/$var2/g" $var1
cd project1
echo "Script terminating..."


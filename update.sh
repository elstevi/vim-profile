#!/bin/sh

ORIGINAL_WD=$(pwd)
cd ~/.vim
timeout 2 git remote update > /dev/null 2>&1
UPDATE_STATUS=$(git status -uno | grep -c -i 'behind\|different')
if [ "$UPDATE_STATUS" != "0" ]; then
	read -p "Updates available, update now? " -n 1 -r
	echo
	git reset --hard
	git pull -f origin master
	sh ~/.vim/setup.sh
	echo "Updates complete."
fi
cd ${ORIGINAL_WD}

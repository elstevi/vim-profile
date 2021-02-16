# Are any updates needed?
ORIGINAL_WD=$(pwd)
cd ~/.vim
if [ ! -f '~/.vim/no_update' ]; then
	timeout 2 git remote update > /dev/null 2>&1
	UPDATE_STATUS=$(git status -uno | grep -c -i 'behind\|different')
	if [ "$UPDATE_STATUS" != "0" ]; then
		read -p "Updates available, update now? " -n 1 -r
		echo
		if [[ $REPLY =~ ^[Yy]$ ]]; then
			git reset --hard
			git pull -f origin master
			sh ~/.vim/setup.sh
			echo "Updates complete."
		fi
	fi
fi
cd ${ORIGINAL_WD}

if [ -f ~/.vim/bofh_enable ]; then
	timeout 2 curl -s https://raw.githubusercontent.com/elstevi/shitism-server/master/bofh.txt | sort -R | head -n1 2> /dev/null
fi

TIME='\[\e[96m\]\@'
WD='\[\e[91m\]\w'
USR='\[\e[31m\]\u'
AT='\[\e[0m\]@'
HOST='\[\e[36m\]\h'
STINGER='\[\e[91m\]-->\[\e[0m\] '

# Install auto completion
source ~/.vim/completion/*
alias t="bash ~/.vim/todo.sh -d ~/.vim/todo.cfg"
alias vpu="bash ~/.vim/update.sh"
complete -F _todo t

export EDITOR="vim"
export TZ="America/Los_Angeles"
export PS1="${TIME} ${WD}\n${USR}${AT}${HOST}${STINGER}"
export PROMPT_COMMAND=""
export PATH="${PATH}:/usr/local/bin:${HOME}/bin"

if [ -f ~/.bash_vars ]; then
	source ~/.bash_vars
fi

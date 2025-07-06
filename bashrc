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

if [ -f ~/.vim/bofh_enable ]; then
	timeout 2 curl -s https://raw.githubusercontent.com/elstevi/shitism-server/master/bofh.txt | sort -R | head -n1 2> /dev/null
fi

if [ "$(uname)" == "Darwin" ]; then
	export HOMEBREW_PREFIX="/opt/homebrew";
	export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
	export HOMEBREW_REPOSITORY="/opt/homebrew";
	fpath[1,0]="/opt/homebrew/share/zsh/site-functions";
	PATH="/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin"; export PATH;
	[ -z "${MANPATH-}" ] || export MANPATH=":${MANPATH#:}";
	export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";
	export BASH_SILENCE_DEPRECATION_WARNING=1
fi

if [ "$(which pyenv)" ]; then
	eval "$(pyenv virtualenv-init -)"
fi

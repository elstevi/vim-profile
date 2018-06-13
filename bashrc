TIME='\[\e[96m\]\@'
WD='\[\e[91m\]\w'
USER='\[\e[31m\]\u'
AT='\[\e[0m\]@'
HOST='\[\e[36m\]\h'
STINGER='\[\e[91m\]-->\[\e[0m\] '
export PS1="${TIME} ${WD}\n${USER}${AT}${HOST}${STINGER}"

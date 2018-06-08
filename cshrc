# $FreeBSD: releng/10.1/etc/root/dot.cshrc 243893 2012-12-05 13:56:39Z eadler $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
# more examples available at /usr/share/examples/csh/
#

# Steven Douglas 2015

# Do we need to update?

if($?prompt) then               # Only interactive shells set $prompt

set system = `uname`
alias tmux	tmux -2
alias h		history 25
alias j		jobs -l
alias la	ls -aF
alias lf	ls -FA
alias ll	ls -lAF

# A righteous umask
umask 22

set path = (/sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin $HOME/bin)

setenv	EDITOR	vi
setenv	PAGER	more
setenv	BLOCKSIZE	K
if ($?prompt) then
	# An interactive shell -- set some stuff up
	set prompt = "%{\e[34m%}%B%t%b %{\e[91m%}%~ \n%{\e[31m%}%n%{\e[0m%}@%{\e[36m%}%m%{\e[91m%}-->%{\e[0m%} "



	set promptchars = "%#"

	set filec
	set history = 1000
	set savehist = (1000 merge)
	set autolist = ambiguous
	# Use history to aid expansion
	set autoexpand
	set autorehash
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif

endif
endif

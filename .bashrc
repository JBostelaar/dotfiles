export EDITOR='vim'
export HISTSIZE=10000
export HISTFILESIZE=10000
export PAGER='less -R'

alias l='ls -AFhl --color=always'
alias ..='cd ..'
alias ...='cd ../..'
alias h='history'
alias open='open http://localhost:3000'

# os x is a special little snowflake... (aka stupid)
if [ `uname` = 'Darwin' ]; then
	export CLICOLOR=1
	export LSCOLORS=ExGxcxdxCxegedabagacad
	alias l='ls -AFhl'
fi

c=1

# host-specific colouring
host=`hostname`
if [[ $host =~ ^Jorns(-[-a-zA-Z0-9]+)?(\.[a-z]+)*$ ]]; then
	c='2'
	host='(╯°□°）╯︵ ┻━┻ '
fi

# git completion + prompt
source ~/.git-completion.bash
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUPSTREAM='auto'

# set prompt
PS1='\n\[\e[0;3${c}m\]\u\[\e[0m\] @ \[\e[1;3${c}m\]${host}\[\e[0m\] \[\e[1;36m\]\w\[\e[0m\] $(__git_ps1 "[%s]") \n\$ '

export NVM_DIR="/Users/admin/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# added by travis gem
[ -f /Users/admin/.travis/travis.sh ] && source /Users/admin/.travis/travis.sh

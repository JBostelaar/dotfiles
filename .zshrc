# Path to your oh-my-zsh installation.
export ZSH="/Users/jornbostelaar/.oh-my-zsh"

# Config 
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Theme
ZSH_THEME="spaceship"

# Plugins
plugins=(
  zsh-syntax-highlighting
  send
  zsh-autosuggestions
)

# Aliases
alias l='ls -AFhl --color=always'
alias ..='cd ..'
alias ...='cd ../..'
alias root='cd ~/'
alias h='history'
alias opf='cd ~/Documents/projects'
alias deploy='./deploy.sh'

alias nps='npm start'
alias bss='npm run build && npm run server'
alias build='npm run build'
alias server='npm run server'

alias gcd='git checkout develop && git pull origin develop'
alias gcm='git checkout master && git pull origin master'
alias grd='git fetch origin develop && git rebase origin/develop'
alias grc='git rebase --continue'
alias gra='git rebase --abort'

source $ZSH/oh-my-zsh.sh

# Exports
export EDITOR='vim'

export NVM_DIR="/Users/jornbostelaar/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

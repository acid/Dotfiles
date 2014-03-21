export NODE_PATH=/usr/local/lib/node

PS1='\h:\W \u\$ '

# convinience
alias ll='ls -lah'
alias cat='lolcat'

# ruby/rails commands
alias rds='rake db:seed --trace'
alias ss='script/server'
alias sc='script/console'
alias sge="script/generate"
alias be="bundle exec"

# git
alias ga="git add"
alias gaa='git add .'
alias gb="git branch"
alias gc='git commit'
alias gco='git checkout'
alias gd='git diff'
alias gl='git l'
alias gs='git status'
alias gpp='git pull && git push'

test -r /sw/bin/init.sh && . /sw/bin/init.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export GIT_EDITOR='vim -f'
export GIT_AUTHOR_NAME="Daniel Schweighoefer"
export GIT_AUTHOR_EMAIL="daniel@netsteward.net"
export GIT_COMMITTER_NAME="Daniel Schweighoefer"
export GIT_COMMITTER_EMAIL="daniel@netsteward.net"

# docker on mac
export DOCKER_HOST=tcp://

# functions
function title {
    echo -ne "\033]0;"$*"\007"
  }

function tableflip {
  echo ; echo " (╯°□°）╯︵$(echo "$1"|toilet -f term -F rotate)"; echo
}

function fuck {
  if killall -9 "$2"; then
    tableflip "$2"
  fi
}

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

source ~/.bash-git-prompt/gitprompt.sh #add gitprompt
FILE=~/.profile.local ; [ -f $FILE ] && . $FILE

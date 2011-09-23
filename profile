export NODE_PATH=/usr/local/lib/node

PS1='\h:\W \u\$ '

# convinience
alias ll='ls -la'
alias cat='lolcat'

# ruby commands
alias rds='rake db:seed --trace'
alias ss='script/server'
alias sc='script/console'
alias sge="script/generate"

# git
alias ga="git add ."
alias gc='git commit'
alias gpp='git pull && git push'

test -r /sw/bin/init.sh && . /sw/bin/init.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export GIT_EDITOR='vim -f'
export GIT_AUTHOR_NAME="Daniel Schweighoefer"
export GIT_AUTHOR_EMAIL="daniel@netsteward.net"
export GIT_COMMITTER_NAME="Daniel Schweighoefer"
export GIT_COMMITTER_EMAIL="daniel@netsteward.net"


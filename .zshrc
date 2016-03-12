# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh/
ulimit -n 4096

ZSH_THEME="robbyrussell"

plugins=(git ruby osx rails)

source ~/.oh-my-zsh/oh-my-zsh.sh
source ~/.nvm/nvm.sh
unsetopt correct
unsetopt correct_all

# User configuration

export PATH=/Users/waheedel/.rbenv/shims:/Users/waheedel/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/Users/waheedel/npm/bin:/Users/waheedel/Library/Android/sdk/platform-tools
export JAVA_HOME="$(/usr/libexec/java_home)"
export FORCE_INTERCOMRADE=true
export DISABLE_SPRING=true
eval "$(rbenv init - zsh)"
alias bs='bundle exec rspec'
alias bc='bundle exec cucumber'
alias zs='zeus rspec'
alias be='bundle exec'
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vi='/usr/local/Cellar/vim/7.4.488/bin/vim -u "~/.vimrc"'
alias vim='vi'
alias pc='be muster console production'
alias rc='bundle exec rails c'
alias mig='bundle exec rake db:migrate'
alias kapow='touch ~/.pow/restart.txt'
alias int='cd ~/src/intercom'
alias iu='gp && bundle && rake db:migrate'
alias ing='cd ~/src/ingress'
alias emb='cd ~/src/embercom'
alias eu='gp && rm -rf node_modules/ && npm install'
alias con='ssh ec2-user@console.intercom.io'

alias gbd='git branch --merged | grep -v ".\smaster" | xargs git branch -d'
alias gg='git grep'
alias gs='git status'
alias gp='git pull'
alias gc='git checkout'
alias gcob="git checkout -b"
alias gcom="git checkout master"
alias grm="git rebase master"
alias grc="git rebase --continue"
alias grim="git rebase -i master --autosquash"
alias gpm="git pull origin master"
alias gpo="git push origin"
alias gd="git diff --color"
alias amen="git ci --amend --no-edit"
alias gss="git stash"
alias gsa="git stash apply"
gcim () { git commit -m "$*" }
gac() { git add . && git commit -m "$*"  }
gaf() { git add . && git commit -am "fixup! $*"  }
gas() { git add . && git commit -am "squash! $*"  }

export NVM_DIR="/Users/waheedel/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh/

ZSH_THEME="robbyrussell"

plugins=(git ruby osx rails)

source ~/.oh-my-zsh/oh-my-zsh.sh
unsetopt correct
unsetopt correct_all

# User configuration

export PATH=/Users/waheedel/.rbenv/shims:/Users/waheedel/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin
export JAVA_HOME="$(/usr/libexec/java_home)"
eval "$(rbenv init - zsh)"
alias bs='bundle exec rspec'
alias zs='zeus rspec'
alias be='bundle exec'
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vi='/usr/local/Cellar/vim/7.4.488/bin/vim -u "~/.vimrc"'
alias vim='vi'
alias pc='muster console production'
alias rc='rails c'
alias kapow='touch ~/.pow/restart.txt'
alias int='cd ~/src/intercom'
alias ing='cd ~/src/ingress'
alias con='ssh ec2-user@console.intercom.io'

alias gs='git status'
alias gp='git pull'
alias gcob="git checkout -b"
alias gcom="git checkout master"
alias grm="git rebase master"
alias grc="git rebase --continue"
alias grim="git rebase -i master --autosquash"
alias gpm="git pull origin master"
alias gpo="git push origin"
alias gco="git co"
alias gd="git diff --color"
alias amen="git ci --amend"
gac() { git add . && git commit -m "$*"  }
gaf() { git add . && git commit -am "fixup! $*"  }
gas() { git add . && git commit -am "squash! $*"  }

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/waheedelmiladi/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git ruby osx rails)

source ~/.oh-my-zsh/oh-my-zsh.sh
source ~/.nvm/nvm.sh
unsetopt correct
unsetopt correct_all

# User configuration

export PATH=$HOME/.pilot/bin:$HOME/.rbenv/shims:$HOME/.yarn/bin::/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export INTERCOM_USER="waheed"
export FORCE_INTERCOMRADE=true
export BINTRAY_USER=waheed
export BINTRAY_API_KEY={{api key}}

alias pei='pilot exec intercom'
alias psi='pilot start intercom'
alias pri='pilot restart intercom'
alias bs='bundle exec rspec'
alias pc='hammer console production'
alias rc='script/console'
alias int='cd ~/src/intercom'
alias iu='gp && bundle && rake db:migrate'
alias emb='cd ~/src/embercom'
alias yu='gp && yarn install'

alias gbd='git branch --merged | grep -v ".\smaster" | xargs git branch -d'
alias gg='git grep'
alias gs='git status'
alias gp='git pull && git fetch --prune origin'
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

alias hc="hub compare"

nvm use &>/dev/null

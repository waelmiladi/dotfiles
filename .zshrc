# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh/

export BOXEN_MYSQL_PORT=13306
export BOXEN_MONGODB_PORT=17017
export BOXEN_REDIS_URL=redis://localhost:16379
ZSH_THEME="robbyrussell"

plugins=(git ruby osx rails)

source ~/.oh-my-zsh/oh-my-zsh.sh
unsetopt correct
unsetopt correct_all

# User configuration

export PATH="bin:/opt/boxen/rbenv/shims:/opt/boxen/rbenv/bin:/opt/boxen/rbenv/plugins/ruby-build/bin:/opt/boxen/phantomenv/shims:/opt/boxen/phantomenv/bin:node_modules/.bin:/opt/boxen/nodenv/shims:/opt/boxen/nodenv/bin:/opt/boxen/bin:/opt/boxen/homebrew/bin:/opt/boxen/homebrew/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin"
export JAVA_HOME="$(/usr/libexec/java_home)"
eval "$(rbenv init - zsh)"
alias bs='bundle exec rspec'
alias zs='zeus rspec'
alias be='bundle exec'
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
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

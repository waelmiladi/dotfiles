#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

cd ~

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

git config --global user.name "Waheed El Miladi"
git config --global user.email waheed@intercom.io

echo "Installing Homebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing MySQL"
brew install mysql
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist

echo "Installing MongoDB"
cd /usr/local/Library/Formula
git checkout ad159e5 /usr/local/Library/Formula/mongodb.rb
brew install mongodb
ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist
git reset --hard


echo "Installing Redis"
brew install redis
ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist

echo "Installing Memcached"
brew install memcached
ln -sfv /usr/local/opt/memcached/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist

echo "Installing rbenv"
brew install rbenv

echo "Installing ruby 2.0.0-p353"
brew install ruby-build

echo "Installing ruby-build"
rbenv install 2.0.0-p353
rbenv global 2.0.0-p353
rbenv rehash

echo "Install oh-my-zsh"
curl -L http://install.ohmyz.sh | sh
rm ~/.zshrc
ln-s .zshrc ~/
chsh -s /bin/zsh
source ~/.zshrc

echo "Installing vim"
brew switch vim 7.4.488
brew install vim
mkdir .vim/backups
mkdir .vim/tmp
mkdir .vim/colors
cp codeschool.vim ~/.vim/colors
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
rm ~/.vimrc
ln-s .vimrc ~/.vimrc
source ~/.vimrc

git config --global core.editor /usr/local/Cellar/vim/7.4.488/bin/vim

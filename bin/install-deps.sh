#!/bin/bash

# ZSH
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# Antigen
curl -L git.io/antigen > ~/antigen.zsh

# Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update && brew upgrade

# Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

# Node
brew install node

# Python 3
brew install python3

# NPM packages
npm install -g yarn gulp bower diff-so-fancy nativefier git-recent localtunnel nodemon pm2 spaceship-zsh-theme

# Brew packages
brew cask install google-chrome firefox iterm2 mysqlworkbench sublime-text skype hipchat tunnelblick vlc
brew install wget p7zip ssh-copy-id youtube-dl

# Google Music Manager
pip3 install gmusicapi-scripts
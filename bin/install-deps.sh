#!/bin/bash

# Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update && brew upgrade

# Brew packages
brew install git \
          imagemagick \
          node \
          p7zip \
          python3 \
          ssh-copy-id \
          wget \
          youtube-dl

# Apps
brew cask install 1clipboard \
              daisydisk \
              docker \
              dropbox \
              firefox \
              google-chrome \
              google-backup-and-sync \
              handbrake \
              iterm2 \
              itsycal \
              kap \
              microsoft-office \
              namechanger \
              robo-3t \
              sequel-pro \
              sip \
              sketch \
              skype \
              skype-for-business \
              sourcetree \
              spectacle \
              stride \
              sublime-text \
              tunnelblick \
              vlc \
              vnc-viewer

# QuickLook Plugins
brew cask install qlcolorcode \
              qlstephen \
              qlmarkdown \
              quicklook-json \
              qlimagesize \
              webpquicklook \
              suspicious-package \
              quicklookase \
              qlvideo

# NPM packages
npm install -g diff-so-fancy \
           eslint \
           git-recent \
           gulp \
           localtunnel \
           nativefier \
           speed-test \
           stylelint \
           taskbook \
           yarn \
           hex-rgb-cli \
           fx

# Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

# Cleanup
brew cleanup --force
rm -rf /Library/Caches/Homebrew/*

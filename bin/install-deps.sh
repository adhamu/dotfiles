#!/bin/bash

# Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update && brew upgrade

# Brew packages
brew install git \
             imagemagick \
             composer \
             neofetch \
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
               fx \
               pm2

# Cleanup
brew cleanup
brew prune
rm -rf /Library/Caches/Homebrew/*

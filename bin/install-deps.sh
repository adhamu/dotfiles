#!/bin/bash

# Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update && brew upgrade

# Brew packages
brew install git \
             imagemagick \
             composer \
             yarn \
             neofetch \
             node \
             p7zip \
             python3 \
             ssh-copy-id \
             wget \
             youtube-dl

# Apps
brew cask install 1clipboard \
                  colorslurp \
                  daisydisk \
                  docker \
                  dropbox \
                  firefox \
                  google-chrome \
                  handbrake \
                  insomnia \
                  iterm2 \
                  itsycal \
                  microsoft-office \
                  namechanger \
                  rectangle \
                  robo-3t \
                  sequel-pro \
                  sublime-text \
                  tunnelblick \
                  vlc \
                  vnc-viewer \
                  vscodium

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

# Cleanup
brew cleanup

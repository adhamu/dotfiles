#!/bin/bash

# Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update && brew upgrade

# Brew packages
brew install ack \
  awscli \
  composer \
  duti \
  git \
  imagemagick \
  neofetch \
  node \
  p7zip \
  python3 \
  ssh-copy-id \
  yarn \
  wget

# Apps
brew install --cask 1clipboard \
  daisydisk \
  brave-browser \
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
  slack \
  sublime-merge \
  sublime-text \
  tableplus \
  tunnelblick \
  visual-studio-code \
  vlc \
  vnc-viewer \
  zoomus

# QuickLook Plugins
brew install --cask apparency \
  qlcolorcode \
  qlstephen \
  qlmarkdown \
  quicklook-json \
  qlimagesize \
  webpquicklook \
  quicklookase \
  qlvideo

ln -sf /Applications/Sublime\ Merge.app/Contents/SharedSupport/bin/smerge /usr/local/bin/smerge

# Node
npm i aws-cdk -g

# Cleanup
brew cleanup

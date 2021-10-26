#!/usr/bin/env bash

# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update && brew upgrade

# Brew packages
brew install \
  ack \
  alt-tab \
  awscli \
  composer \
  duti \
  git \
  imagemagick \
  jq \
  neofetch \
  node \
  p7zip \
  python3 \
  ssh-copy-id \
  tree \
  yarn \
  wget

# Apps
brew install --cask \
  daisydisk \
  brave-browser \
  docker \
  dropbox \
  firefox \
  google-chrome \
  google-drive \
  handbrake \
  hiddenbar \
  insomnia \
  iterm2 \
  itsycal \
  microsoft-office \
  menubar-colors \
  namechanger \
  rectangle \
  robo-3t \
  slack \
  sublime-merge \
  tableplus \
  visual-studio-code \
  vlc \
  vnc-viewer \
  zoomus

# QuickLook Plugins
brew install --cask \
  apparency \
  qlcolorcode \
  qlstephen \
  qlmarkdown \
  quicklook-json \
  qlimagesize \
  webpquicklook \
  quicklookase \
  qlvideo

ln -sf /Applications/Sublime\ Merge.app/Contents/SharedSupport/bin/smerge /usr/local/bin/smerge

# Fonts
cd ~/Library/Fonts

wget https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip -O Hack.zip
wget https://github.com/JetBrains/JetBrainsMono/releases/download/v2.242/JetBrainsMono-2.242.zip -O JetBrainsMono.zip

unzip -jo Hack.zip '*.ttf'
unzip -jo JetBrainsMono.zip '*.ttf'

rm Hack.zip JetBrainsMono.zip

cd -;

# Node
npm i aws-cdk -g

# Cleanup
brew cleanup

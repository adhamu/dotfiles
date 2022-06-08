#!/usr/bin/env bash

# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update && brew upgrade

brew tap aws/tap

# Brew packages
brew install \
  ack \
  awscli \
  aws-cdk \
  aws-sam-cli \
  alt-tab \
  awscli \
  cfn-lint \
  composer \
  duti \
  fnm \
  git \
  imagemagick \
  jq \
  neofetch \
  node \
  p7zip \
  python3 \
  ssh-copy-id \
  starship \
  tree \
  yarn \
  wget

# Apps
brew install --cask \
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

# gitignore_global
echo '.DS_Store' >> ~/.gitignore_global
echo 'yarn-error.log' >> ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

# Fonts
cd ~/Library/Fonts

wget https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip -O Hack.zip
wget https://github.com/JetBrains/JetBrainsMono/releases/download/v2.242/JetBrainsMono-2.242.zip -O JetBrainsMono.zip

unzip -jo Hack.zip '*.ttf'
unzip -jo JetBrainsMono.zip '*.ttf'

rm Hack.zip JetBrainsMono.zip

cd -;

# Cleanup
brew cleanup

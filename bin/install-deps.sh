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
brew install --cask 1clipboard \
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
                    slack \
                    sublime-text \
                    sublime-merge \
                    tableplus \
                    tunnelblick \
                    vlc \
                    vnc-viewer \
                    vscodium \
                    zoomus

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

ln -sf /Applications/Sublime\ Merge.app/Contents/SharedSupport/bin/smerge /usr/local/bin/smerge

# Cleanup
brew cleanup

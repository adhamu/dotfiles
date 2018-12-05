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
php -r "if (hash_file('sha384', 'composer-setup.php') === '93b54496392c062774670ac18b134c3b3a95e5a5e5c8f1a9f115f203b75bf9a129d5daa8ba6a13e2cc8a1da0806388a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer

# Cleanup
brew cleanup
rm -rf /Library/Caches/Homebrew/*

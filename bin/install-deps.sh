#!/usr/bin/env bash

source "$(dirname "$0")/bootstrap.sh"

# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle --verbose --file $DOTFILES/Brewfile
brew update && brew upgrade
brew cleanup

# Sublime Merge Symlink
ln -sf /Applications/Sublime\ Merge.app/Contents/SharedSupport/bin/smerge /usr/local/bin/smerge

# Fonts
cd ~/Library/Fonts

wget https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip -O Hack.zip
wget https://github.com/JetBrains/JetBrainsMono/releases/download/v2.242/JetBrainsMono-2.242.zip -O JetBrainsMono.zip

unzip -jo Hack.zip '*.ttf'
unzip -jo JetBrainsMono.zip '*.ttf'

rm Hack.zip JetBrainsMono.zip

cd -

xcode-select --install || true

echo "✅ Dependencies"

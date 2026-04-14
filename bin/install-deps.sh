#!/usr/bin/env bash

source "$(dirname "$0")/bootstrap.sh"

xcode-select --install || true

# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -x /usr/local/bin/brew ]]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

brew bundle --verbose --file $DOTFILES/Brewfile
brew update && brew upgrade
brew cleanup

# Sublime Merge Symlink
if [[ -x "/Applications/Sublime Merge.app/Contents/SharedSupport/bin/smerge" ]]; then
  ln -sf "/Applications/Sublime Merge.app/Contents/SharedSupport/bin/smerge" "$(brew --prefix)/bin/smerge"
fi

# Fonts
mkdir -p ~/Library/Fonts
cd ~/Library/Fonts

wget https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip -O Hack.zip
wget https://github.com/JetBrains/JetBrainsMono/releases/download/v2.242/JetBrainsMono-2.242.zip -O JetBrainsMono.zip

unzip -jo Hack.zip '*.ttf'
unzip -jo JetBrainsMono.zip '*.ttf'

rm Hack.zip JetBrainsMono.zip

cd -

echo "✅ Dependencies"

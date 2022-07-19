#!/usr/bin/env bash

# Install Antibody
curl -sfL git.io/antibody | sh -s - -b /usr/local/bin

DOTFILES="$(dirname "$(pwd)")"
FILES="vimrc zshrc aliases functions exports starship.toml"
MAC_SPECIFIC_FILES="macos"

function symlink() {
    echo "Symlinking .$1 --> $DOTFILES/.$1"
    ln -sf $DOTFILES/.$1 ~/.$1
}

for FILE in $FILES; do
    rm -f ~/.$FILE
    symlink $FILE
done

if [[ "$OSTYPE" == "darwin"* ]]; then
    for MAC_SPECIFIC_FILE in $MAC_SPECIFIC_FILES; do
        symlink $MAC_SPECIFIC_FILE
    done
fi

exec zsh

echo "✅ Dotfiles"

# Fix "Beep" in macOS
mkdir ~/Library/KeyBindings
echo "{
    \"^@\\\UF701\" = \"noop:\";
    \"^@\\\UF702\" = \"noop:\";
    \"^@\\\UF703\" = \"noop:\";
}" >~/Library/KeyBindings/DefaultKeyBinding.dict

echo "✅ macOS VSCode 'Beep'"

# Install Vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/plugin/Vundle.vim

# Install Vundle plugins
vim +PluginInstall +qall

echo "✅ VIM"

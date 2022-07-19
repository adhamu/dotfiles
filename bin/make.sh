#!/usr/bin/env bash

# Install Antibody
curl -sfL git.io/antibody | sh -s - -b /usr/local/bin

files="vimrc zshrc aliases functions exports starship.toml"
mac_specific_files="macos"

function symlink() {
    echo "Symlinking .$1 to $HOME/dotfiles/.$1"
    ln -sf $HOME/dotfiles/.$1 ~/.$1
}

for file in $files; do
    rm -f ~/.$file
    symlink $file
done

if [[ "$OSTYPE" == "darwin"* ]]; then
    for mac_specific_files in $mac_specific_file; do
        symlink $mac_specific_file
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

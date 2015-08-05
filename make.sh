#!/bin/bash

# Variables
dir=~/dotfiles
files="bash_profile bashrc bash_rc vimrc vim osx zshrc profile"

# Create new dotfiles directory
cd ~
mkdir-p $dir

for file in $files; do
	# Move existing dotfiles to newly created directory
    echo "Moving any existing dotfiles to $dir..."
    mv ~/.$file $dir/

    # Create symlink to moved dotfiles
    echo "Creating symlink to $file in home directory..."
    ln -s $dir/.$file ~/.$file
done

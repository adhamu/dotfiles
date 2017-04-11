#!/bin/bash

if [ -z "$1" ]
then
    echo Usage: `basename $0` folder_name 1>&2
    exit 1
else
    # Variables
    dir=$1
    files="bash_profile bashrc bash_rc vimrc vim osx zshrc profile aliases functions exports extras"

    # Create new dotfiles directory
    cd ~
    echo "Creating $dir"
    mkdir -p $dir

    for file in $files; do
        # Move existing dotfiles to newly created directory
        echo "Moving .$file to ~/$dir/"
        mv ~/.$file ~/$dir/

        # Create symlink to moved dotfiles
        echo "Symlinking ~/.$file to ~/$dir/.$file"
        ln -sf ~/$dir/.$file ~/.$file
    done
fi
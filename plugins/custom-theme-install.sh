#!/bin/sh

if [ -z "$1" ]
then
    echo Usage: `basename $0` "[custom_theme_path]" 1>&2
    exit 1
else
    DIR=`dirname $1`
    THEME=`basename $1`
    OMZ_THEME_DIR="$HOME/.oh-my-zsh/custom/themes/"

    echo "Creating directory $OMZ_THEME_DIR"
    mkdir -p $OMZ_THEME_DIR

    echo "Symlinking $DIR/$THEME ${OMZ_THEME_DIR}${THEME}"
    ln -sf "$DIR/$THEME" "${OMZ_THEME_DIR}${THEME}"

fi

#!/bin/sh

if [ -z "$1" ]
then
    echo Usage: `basename $0` "[custom_theme_path]" 1>&2
    exit 1
else
    DIR=`dirname $1`
    THEME="$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
    THEME_NAME=`basename $1`
    OMZ_THEME_DIR="$HOME/.oh-my-zsh/custom/themes/"

    echo "Creating directory $OMZ_THEME_DIR"
    mkdir -p $OMZ_THEME_DIR

    echo "Symlinking $THEME ${OMZ_THEME_DIR}${THEME_NAME}"
    ln -sf "$CURRENT_DIR/$THEME" "${OMZ_THEME_DIR}${THEME_NAME}"
fi

#!/usr/bin/env bash

###################################################################
#                   USE THIS WITH CAUTION!                        #
#         IT WILL RUN ALL SCRIPTS INSIDE THIS DIRECTORY           #
#       ONLY RECOMMENDED FOR RUNNING ON A BRAND NEW MACHINE       #
###################################################################

echo -e "⚠️  \033[1;33mWARNING"
echo "-------------------------------------------------------------------------"
echo -e "This script is only recommended to be run on a brand new (fresh) machine.\033[0m\n"

read -p "Are you sure you want to proceed? [Y/n] " CONFIRM

if [[ $CONFIRM != "Y" ]]; then
  echo "Exiting"
  exit 1
fi

sudo -v

source "$(dirname "$0")/install-deps.sh"
source "$(dirname "$0")/default-file-associations.sh"
source "$(dirname "$0")/make.sh"

exec zsh
source ~/.zshrc

if [[ "$OSTYPE" == "darwin"* ]]; then
  source ~/.macos
fi

[[ ! -f ~/.ssh/id_rsa ]] && ssh-keygen

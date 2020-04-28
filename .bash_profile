#!/bin/bash
YELLOW='\033[1;33m';

for file in ~/.{extras,exports,aliases,functions}; do
    if [ -f "$file" ];then
	   source "$file"
    fi
done
echo "${YELLOW}Dotfiles sourced. Ready!";
unset file

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
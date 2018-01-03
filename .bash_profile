#!/bin/bash
YELLOW='\033[1;33m';

for file in ~/.{extras,exports,aliases,functions}; do
    if [ -f "$file" ];then
	   source "$file"
    fi
done
echo "${YELLOW}Dotfiles sourced. Ready!";
unset file
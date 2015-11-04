#!/bin/bash
YELLOW='\033[1;33m';

for file in ~/.{extras,exports,aliases,functions,osx}; do
    if [ -f "$file" ]
    then
	   source "$file"
       echo "${YELLOW}Sourced $file";
    fi
done
unset file
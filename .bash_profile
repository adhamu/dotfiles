#!/bin/bash
for file in ~/.{extras,exports,aliases,functions}; do
	source "$file"
done
unset file
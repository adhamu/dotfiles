setopt auto_cd

autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C

export STARSHIP_CONFIG=~/.starship.toml

for antidote in \
  /opt/homebrew/opt/antidote/share/antidote/antidote.zsh \
  /usr/local/opt/antidote/share/antidote/antidote.zsh; do
  if [[ -r "$antidote" ]]; then
    source "$antidote"
    break
  fi
done

for file in $HOME/.{extras,exports,aliases,functions}; do
  if [ -f "$file" ]; then
    source "$file"
  fi
done
unset file

eval "$(starship init zsh)"
eval "$(fnm env --use-on-cd)"

if (( $+functions[antidote] )); then
  antidote load ${ZDOTDIR:-$HOME}/.zsh_plugins.txt
fi

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

setopt auto_cd

autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C

export STARSHIP_CONFIG=~/.starship.toml

source <(antibody init)

for file in $HOME/.{extras,exports,aliases,functions}; do
  if [ -f "$file" ]; then
    source "$file"
  fi
done
unset file

eval "$(starship init zsh)"
eval "$(fnm env --use-on-cd)"

antibody bundle zsh-users/zsh-autosuggestions
antibody bundle zsh-users/zsh-completions
antibody bundle jocelynmallon/zshmarks
antibody bundle djui/alias-tips
antibody bundle robbyrussell/oh-my-zsh path:lib
antibody bundle zsh-users/zsh-syntax-highlighting

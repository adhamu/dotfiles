setopt auto_cd

autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C

export NVM_AUTOLOAD=1

source <(antibody init)

for file in ~/.{extras,exports,aliases,functions}; do
  if [ -f "$file" ];then
    source "$file"
  fi
done
unset file

antibody bundle zsh-users/zsh-autosuggestions
antibody bundle zsh-users/zsh-completions
antibody bundle jocelynmallon/zshmarks
antibody bundle djui/alias-tips
antibody bundle robbyrussell/oh-my-zsh path:plugins/nvm
antibody bundle robbyrussell/oh-my-zsh path:lib
antibody bundle mafredri/zsh-async
antibody bundle sindresorhus/pure
antibody bundle zsh-users/zsh-syntax-highlighting

PURE_PROMPT_SYMBOL="▶ "

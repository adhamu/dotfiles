export NVM_AUTO_USE=true
export NVM_COMPLETION=true

source <(antibody init)

for file in ~/.{extras,exports,aliases,functions}; do
  if [ -f "$file" ];then
    source "$file"
  fi
done
unset file

antibody bundle zsh-users/zsh-autosuggestions
antibody bundle zsh-users/zsh-completions
antibody bundle zsh-users/zsh-syntax-highlighting
antibody bundle jocelynmallon/zshmarks

antibody bundle lukechilds/zsh-nvm

antibody bundle mafredri/zsh-async
antibody bundle sindresorhus/pure

PURE_PROMPT_SYMBOL="☰ "

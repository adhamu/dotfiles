export NVM_AUTO_USE=true
export NVM_COMPLETION=true

source $HOME/dotfiles/antigen.zsh
antigen use oh-my-zsh

for file in ~/.{extras,exports,aliases,functions}; do
  if [ -f "$file" ];then
    source "$file"
  fi
done
unset file

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle jocelynmallon/zshmarks

antigen bundle lukechilds/zsh-nvm

antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

PURE_PROMPT_SYMBOL="☰ "

antigen apply

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

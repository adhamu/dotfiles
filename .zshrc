export NVM_AUTO_USE=true
export NVM_COMPLETION=true

source $HOME/dotfiles/antigen.zsh

for file in ~/.{extras,exports,aliases,functions}; do
    if [ -f "$file" ];then
	   source "$file"
    fi
done
unset file

autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C

antigen use oh-my-zsh

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

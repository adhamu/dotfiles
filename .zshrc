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

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

autoload -U add-zsh-hook
add-zsh-hook chpwd load-nvmrc
load-nvmrc

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle jocelynmallon/zshmarks

antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

PURE_PROMPT_SYMBOL="☰ "

antigen apply

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

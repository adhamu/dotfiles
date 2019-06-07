source $HOME/dotfiles/antigen.zsh
source $HOME/.bash_profile

antigen use oh-my-zsh

if [[ "$OSTYPE" == "darwin"* ]]; then
    antigen bundle osx
fi

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle jocelynmallon/zshmarks

antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

PURE_PROMPT_SYMBOL="⌘ "

antigen apply

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

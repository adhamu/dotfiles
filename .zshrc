source $HOME/dotfiles/antigen.zsh
source $HOME/.bash_profile

antigen use oh-my-zsh
antigen theme denysdovhan/spaceship-zsh-theme
antigen bundle git

if [[ "$OSTYPE" == "darwin"* ]]; then
    antigen bundle osx
fi

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

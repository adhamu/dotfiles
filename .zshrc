source $HOME/antigen.zsh
source $HOME/.bash_profile

antigen use oh-my-zsh
antigen bundle git
antigen bundle osx
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

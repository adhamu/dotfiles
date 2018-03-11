source $HOME/dotfiles/antigen.zsh
source $HOME/.bash_profile

antigen use oh-my-zsh
antigen bundle git

if [[ "$OSTYPE" == "darwin"* ]]; then
    #antigen bundle osx
fi

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle jocelynmallon/zshmarks

antigen theme denysdovhan/spaceship-zsh-theme
SPACESHIP_PROMPT_ORDER=(
  time          # Time stampts section
  user          # Username section
  host          # Hostname section
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  package       # Package version
  node          # Node.js section
  #ruby          # Ruby section
  #elixir        # Elixir section
  #xcode         # Xcode section
  #swift         # Swift section
  #golang        # Go section
  php           # PHP section
  #rust          # Rust section
  #haskell       # Haskell Stack section
  #julia         # Julia section
  docker        # Docker section
  #aws           # Amazon Web Services section
  venv          # virtualenv section
  #conda         # conda virtualenv section
  #pyenv         # Pyenv section
  #dotnet        # .NET section
  #ember         # Ember.js section
  #kubecontext   # Kubectl context section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Backgound jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

antigen apply

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

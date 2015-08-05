# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pure"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Aliases
source ~/.aliases

# Proxies
proxy() {
	if [[ "${http_proxy:-NOTSET}" != "NOTSET" ]]; then
		unset http_proxy && unset https_proxy && unset HTTP_PROXY && unset HTTPS_PROXY;
		npm config set http-proxy null;
		npm config set https-proxy null;
		git config --global --unset http.proxy;
		git config --global --unset https.proxy;
		echo "No proxy.";
	else
		export http_proxy=http://192.168.222.88:8080 && export https_proxy=http://192.168.222.88:8080 && export HTTP_PROXY=http://192.168.222.88:8080 && export HTTPS_PROXY=http://192.168.222.88:8080;
		npm config set http-proxy "http://192.168.222.88:8080";
		npm config set https-proxy "http://192.168.222.88:8080";
		git config --global http.proxy http://192.168.222.88:8080;
		git config --global https.proxy http://192.168.222.88:8080;
		echo "http_proxy = $http_proxy";
		echo "https_proxy = $https_proxy";
		echo "HTTP_PROXY = $HTTP_PROXY";
		echo "HTTPS_PROXY = $HTTPS_PROXY";
	fi;
}
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:/usr/local/go/bin
export PATH=/usr/local/sbin:/Users/amit/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/amit/pear/bin:/Users/amit/.rvm/bin:~/.composer/vendor/bin
export HISTTIMEFORMAT="%d/%m/%y %T "

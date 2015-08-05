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
alias sf2='php app/console'
alias sf2clear='php app/console cache:clear'
alias show_hidden='defaults write com.apple.finder AppleShowAllFiles -boolean true && killall Finder'
alias hide_hidden='defaults write com.apple.finder AppleShowAllFiles -boolean false && killall Finder'
alias zsrc='source ~/.zshrc'
alias zedit='vim ~/.zshrc'
alias lessc_dir='for file in *.less; do lessc -x -O2 --strict-imports $file `basename ${file%%.*}`.css ; done'
alias dl_history="sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'select LSQuarantineDataURLString from LSQuarantineEvent'"
alias delete_dl_history="sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"
alias show_finder_statusbar="defaults write com.apple.finder ShowStatusBar -bool true;killall Finder"
alias hide_finder_statusbar="defaults write com.apple.finder ShowStatusBar -bool false;killall Finder"
alias dl_laracasts="php ~/Development/laracast-download/laracast-download.php"
alias glogme="glog --author='Amit Dhamu'"
alias art="php artisan"
alias arthelp="php artisan --help"
alias vu="vagrant up"
alias vs="vagrant suspend"
alias iterm_themes="~/Dropbox/iTerm\ Colour\ Schemes/tools/preview.rb ~/Dropbox/iTerm\ Colour\ Schemes/schemes/*"
alias g=git
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gc='git commit'
alias gca='git commit -a'
alias gcb='git checkout -b'
alias gcf='git config --list'
alias gco='git checkout'
alias gcount='git shortlog -sn'
alias gd='git diff'
alias gf='git fetch'
alias gl='git pull'
alias glg='git log --stat --color'
alias glgg='git log --graph --color'
alias glgga='git log --graph --decorate --all'
alias glgm='git log --graph --max-count=10'
alias glgp='git log --stat --color -p'
alias glo='git log --oneline --decorate --color'
alias glog='git log --oneline --decorate --color --graph'
alias glol='git log --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit'
alias glola='git log --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit --all'
alias glp=_git_log_prettily
alias gm='git merge'
alias gp='git push'
alias gss='git status -s'
alias gst='git status'
alias space='du -sk * | sort -rn | head'

export 'hash=#'

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

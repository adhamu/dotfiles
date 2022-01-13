setopt auto_cd

autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C

export STARSHIP_CONFIG=~/.starship.toml

eval "$(starship init zsh)"
source <(antibody init)

for file in ~/.{extras,exports,aliases,functions}; do
  if [ -f "$file" ];then
    source "$file"
  fi
done
unset file

autoload -U add-zsh-hook
use_nvmrc_version_automatically() {
  if [[ -f .nvmrc ]]; then
    nvm use $(cat .nvmrc)
  fi
}
add-zsh-hook chpwd use_nvmrc_version_automatically
use_nvmrc_version_automatically

antibody bundle zsh-users/zsh-autosuggestions
antibody bundle zsh-users/zsh-completions
antibody bundle jocelynmallon/zshmarks
antibody bundle djui/alias-tips
antibody bundle robbyrussell/oh-my-zsh path:lib
antibody bundle robbyrussell/oh-my-zsh path:plugins/nvm
antibody bundle zsh-users/zsh-syntax-highlighting

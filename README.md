# My Dotfiles

## Stuff
- [Antigen](https://github.com/zsh-users/antigen)
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- [spaceship-zsh-theme](https://github.com/denysdovhan/spaceship-zsh-theme)
- Environment-aware so will only enable macOS plugins where necessary

## Installation

```
➜ git clone https://github.com/adhamu/dotfiles.git
➜ cd dotfiles/bin
➜ ./make.sh
```

## What `make.sh` does
- Downloads [Antigen](https://github.com/zsh-users/antigen)
- Symlinks the following:


| Symlink           | Original File                             |
| ~/.bash_profile   | /Users/Downloads/dotfiles/.bash_profile   |
| ~/.bashrc         | /Users/Downloads/dotfiles/.bashrc         |
| ~/.bash_rc        | /Users/Downloads/dotfiles/.bash_rc        |
| ~/.vimrc          | /Users/Downloads/dotfiles/.vimrc          |
| ~/.zshrc          | /Users/Downloads/dotfiles/.zshrc          |
| ~/.profile        | /Users/Downloads/dotfiles/.profile        |
| ~/.aliases        | /Users/Downloads/dotfiles/.aliases        |
| ~/.functions      | /Users/Downloads/dotfiles/.functions      |
| ~/.exports        | /Users/Downloads/dotfiles/.exports        |
| ~/.extras         | /Users/Downloads/dotfiles/.extras         |

# My Dotfiles

## Stuff

- [Antigen](https://github.com/zsh-users/antigen)
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- [Pure prompt](https://github.com/sindresorhus/pure#antigen)

## Installation

```
➜ git clone https://github.com/adhamu/dotfiles.git
➜ cd dotfiles/bin
➜ ./make.sh
```

## What `make.sh` does

- Downloads [Antigen](https://github.com/zsh-users/antigen)
- Symlinks the following:

| Symlink      | Original File                        |
| ------------ | ------------------------------------ |
| ~/.aliases   | /Users/Downloads/dotfiles/.aliases   |
| ~/.exports   | /Users/Downloads/dotfiles/.exports   |
| ~/.extras    | /Users/Downloads/dotfiles/.extras    |
| ~/.functions | /Users/Downloads/dotfiles/.functions |
| ~/.vimrc     | /Users/Downloads/dotfiles/.vimrc     |
| ~/.zshrc     | /Users/Downloads/dotfiles/.zshrc     |

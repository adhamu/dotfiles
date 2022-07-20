# My Dotfiles

## Stuff

- [Antibody](https://getantibody.github.io)
- [Starship prompt](https://starship.rs)

## Installation

```
➜ git clone https://github.com/adhamu/dotfiles.git
➜ cd dotfiles/bin
➜ ./install-deps.sh
➜ ./default-file-associations.sh
➜ ./make.sh
```

## What `make.sh` does

- Downloads [Antibody](https://getantibody.github.io)
- Symlinks the following:

| Symlink      | Original File                        |
| ------------ | ------------------------------------ |
| ~/.aliases   | /Users/Downloads/dotfiles/.aliases   |
| ~/.exports   | /Users/Downloads/dotfiles/.exports   |
| ~/.extras    | /Users/Downloads/dotfiles/.extras    |
| ~/.functions | /Users/Downloads/dotfiles/.functions |
| ~/.vimrc     | /Users/Downloads/dotfiles/.vimrc     |
| ~/.zshrc     | /Users/Downloads/dotfiles/.zshrc     |

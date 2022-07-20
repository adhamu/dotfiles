# My Dotfiles

## Stuff

- [Antibody](https://getantibody.github.io)
- [Starship prompt](https://starship.rs)

## Installation

```shell
git clone https://github.com/adhamu/dotfiles.git
cd dotfiles
```

## Usage

### Everything

This is only recommended when setting up a brand new (fresh) macOS machine

```shell
bin/fresh.sh
```

---

### Manual

You can selectively run these as required

#### Dependencies (macOS only)

```shell
bin/install-deps.sh
```

#### Default file associations (macOS only)

```shell
bin/default-file-associations.sh
```

#### Global git configuration, VIM and symlinking dotfiles (universal)

```shell
bin/make.sh
```

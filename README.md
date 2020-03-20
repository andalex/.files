# Dotfiles

Install dotfiles from shell script.

I do most of my work on a remote linux machine, using the vscode ssh client and tmux, occassionally vim.

## Setup

The install script will clone this repo, add all the symlinks for each dotfile, then install any packages.

```
curl -o- https://raw.githubusercontent.com/andalex/dotfiles/master/install.sh | bash
```

*or* 

Clone the repo manully, then:

```
make install
```

## Configuration Files

```
├── .tmux.conf
├── .vimrc
├── git
│   ├── .gitconfig
│   └── .gitignore_global
└── shell
    ├── .alias
    ├── .bashrc
    └── .zshr
```

These files are symlinked to the following locations:
```
$HOME/.tmux.conf
$HOME/.vimrc
$HOME/.gitconfig
$HOME/.gitignore_global
$HOME/.alias
$HOME/.bashrc
```


## Packages:
* [NVM v0.34.0](https://github.com/nvm-sh/nvm)
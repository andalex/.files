#!/usr/bin/env bash
NVM_VERSION="v0.34.0"

if [ ! -d './dotfiles' ]; then
    echo -e "\nDownloading from github...\n"

    git clone git@github.com:andalex/dotfiles.git
fi

cd dotfiles

echo -e "\nCreating symlinks...\n"

dotfiles=(
    "$PWD/.tmux.conf"
    "$PWD/.vimrc"
    "$PWD/git/.gitconfig"
    "$PWD/git/.gitignore_global"
    "$PWD/shell/.alias"
    "$PWD/shell/.bashrc"
)

for file in "${dotfiles[@]}"; do
    target="$HOME/$( basename $file )"
    if [ -e $target ]; then
        echo "~${target#$HOME} already exists... Skipping."
    else
        echo "Creating symlink for $( basename $file ) in $target..."
        ln -s $file $target
    fi
done


echo -e "\n installing NVM..."

curl -o- "https://raw.githubusercontent.com/nvm-sh/nvm/$NVM_VERSION/install.sh" | bash

source "$HOME/.bashrc"

# should return `nvm` if installed properly. nvm is a sourced shell func, not an executable.
command -v nvm | grep -q 'nvm' && echo 'NVM install successful'
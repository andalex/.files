#!/usr/bin/env bash

echo -e "\nCreating symlinks...\n"

dotfiles=(
    "$PWD/.tmux.conf"
    "$PWD/.vimrc"
    "$PWD/git/.bashrc"
    "$PWD/git/.gitconfig"
    "$PWD/git/.gitignore_global"
    "$PWD/git/.zshrc"
    "$PWD/shell/.alias"
)

for file in "${dotfiles[@]}"; do
    target="$PWD/test/$( basename $file )"
    if [ -e $target ]; then
        echo "~${target#$HOME} already exists... Skipping."
    else
        echo "Creating symlink for $( basename $file ) in $target..."
        ln -s $file $target
    fi
done

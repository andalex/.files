#!/usr/bin/env bash
echo -e "\nDownloading from github...\n"

git clone https://github.com/andalex/dotfiles.git

cd dotfiles

echo -e "\nCreating symlinks...\n"

dotfiles=(
    "$PWD/.tmux.conf"
    "$PWD/.vimrc"
    "$PWD/git/.gitconfig"
    "$PWD/git/.gitignore_global"
    "$PWD/shell/.alias"
    "$PWD/shell/.bashrc"
    "$PWD/shell/.zshrc"
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

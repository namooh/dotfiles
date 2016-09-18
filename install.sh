#!/usr/bin/env bash
# set -e

suffix=$(date +'%Y-%m-%d-%H:%M:%S')

echo "Your current dotfiles are being backed up"

mv -v ~/.emacs ~/.emacs."$suffix"
mv -v ~/.emacs.d ~/.emacs.d."$suffix"
mv -v ~/.vimrc  ~/.vimrc."$suffix"
mv -v ~/.vim  ~/.vim."$suffix"
mv -v ~/.tmux.conf ~/.tmux.conf."$suffix"

mkdir -p ~/.lein

current_dir=$(pwd)

echo "linking new files..."

ln -sv "$current_dir/vimrc" ~/.vimrc
ln -sv "$current_dir/emacs.d" ~/.emacs.d
ln -sv "$current_dir/vim" ~/.vim
ln -sv "$current_dir/tmux.conf" ~/.tmux.conf
ln -sv "$current_dir/profiles.clj" ~/.lein/profiles.clj

echo "done"

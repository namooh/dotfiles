#!/usr/bin/env bash
# set -e

mv -v ~/.emacs ~/.emacs.bak
mv -v ~/.emacs.d ~/.emacs.d.bak
mv -v ~/.vimrc ~/.vimrc.bak
mv -v ~/.vim ~/.vim.bak
mv -v ~/.tmux.conf ~/.tmux.conf.bak

current_dir=$(pwd)

ln -sv "$current_dir/vimrc" ~/.vimrc
ln -sv "$current_dir/emacs" ~/.emacs
ln -sv "$current_dir/emacs.d" ~/.emacs.d
ln -sv "$current_dir/vim" ~/.vim
ln -sv "$current_dir/tmux.conf" ~/.tmux.conf



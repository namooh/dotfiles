#!/usr/bin/env bash
set -e

mv ~/.emacs ~/.emacs.bak
mv ~/.emacs.d ~/.emacs.d.bak
mv ~/.vimrc ~/.vimrc.bak
mv ~/.vim ~/.vim.bak
mv ~/.tmuc.conf ~/.tmuc.conf.bak

ln -s vimrc ~/.vimrc
ln -s emacs ~/.emacs
ln -s emacs.d ~/.emacs.d
ln -s .vim ~/.vim
ln -s tmux.conf ~/.tmux.conf



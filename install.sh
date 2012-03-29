#!/usr/bin/env sh
set -o errexit

if [ -e $HOME/.vimrc ]; then
    echo "BACKUP $HOME/.vimrc -> $HOME/.vimrc.old"
    mv $HOME/.vimrc $HOME/.vimrc.old
fi
if [ -e $HOME/.vim/vimrc.d ]; then
    echo "BACKUP $HOME/.vim/vimrc.d -> $HOME/.vim/vimrc.d.old"
    mv $HOME/.vimrc/vimrc.d $HOME/.vim/vimrc.d.old
fi

ln -s $PWD/vimrc $HOME/.vimrc # install .vimrc
ln -s $PWD/vimrc.d $HOME/.vim/ # install vimrc programming language pack

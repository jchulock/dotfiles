#!/bin/bash
if [ -e .block ]; then 
    echo "cancelled -- remove '.block' to override"
    exit 1
fi
touch .block

mkdir -p ~/.config

# bash
cat bash_profile >> ~/.bash_profile
cat bashrc >> ~/.bashrc
cat bash_aliases >> ~/.bash_aliases

# X11
cat Xresources >> ~/.Xresources
cat xinitrc >> ~/.xinitrc

# key binds (hjkl)
cat Xmodmap >> ~/.Xmodmap
cat xbindkeysrc >> ~/.xbindkeysrc

# default directories
cp user-dirs.dirs ~/.config/user-dirs.dirs

# system bell
cat inputrc >> ~/.inputrc

# vim
vimtmp=~/.vim/tmp
mkdir -p $vimtmp
mkdir $vimtmp/backup
mkdir $vimtmp/swap
mkdir $vimtmp/tmp
cat vimrc >> ~/.vimrc

# i3
cp i3config ~/.config/i3/config
cp i3status.conf ~/.i3status.conf
i3-msg restart

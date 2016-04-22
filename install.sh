#!/bin/bash
mkdir -p ~/dotfiles_old
find ~/dotfiles/ -name ".*" ! -path ~/dotfiles/ ! -path ~/dotfiles/.git | while read fname;
do
    old=~/$(basename $fname) 
    if [ -f  $old ]; then
           mv "$old" ~/dotfiles_old 
        fi
    ln -s -f $fname $old
done

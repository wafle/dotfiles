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

#source .bash_profile from .bashrc
echo "source '`pwd/bash_extras.sh`'" >> "$HOME/.bashrc"

#!/bin/bash

# variables
dir=~/dotfiles
olddir=~/dotfiles_old
files="bash_profile"

# create dotfiles_old in homedir
mkdir $olddir

# change to the dotfiles directory
cd $dir

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
	mv ~/.$file ~/dotfiles_old/
	ln -s $dir/$file ~/.$file
done
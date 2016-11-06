#!/bin/bash

# variables
dir=~/dotfiles
olddir=~/dotfiles_old
files=("bash_profile" "eslintrc" "zshrc" "gitconfig")

# create and change to olddir
mkdir $olddir
cd $dir

# move any existing dotfiles to oldir, then symlink to the new ones
for file in ${files[*]}; do
	if [ -f $file ]; then
		mv ~/.$file $olddir/$file
		ln -s $dir/$file ~/.$file
	fi
done
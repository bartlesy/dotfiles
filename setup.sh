#!/bin/bash
# Script to symlink dotfiles to home directory
# ty rob

# chown files to user
ls -a | xargs chown $USER

# Create symlinks

# List all dotfiles in directory
# Pipe and grep out dotfiles (to exclude ., .., run.sh, etc)
# remove .git directory from dotfiles (i.e. don't symlink this git repo to home)
# Concatenate pwd to dotfile and make symlink to home with flags:
# 	-f force, -s symbolic link
ls -a | egrep "^\.[a-zA-Z0-9]+" | grep -v '.git'  | xargs -I {} ln -f -s `pwd`/{} ~

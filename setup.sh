#!/bin/bash
# Script to symlink dotfiles to home directory
# ty rob

# chown files to user
ls -a | xargs chown $USER

# Create symlinks 
# List all dotfiles in directory
# Pipe and grep out dotfiles (to exclude ., .., run.sh, etc)
# Concatenate pwd to dotfile and make symlink to home with flags:
# 	-f force, -s symbolic link
ls -a | egrep "^\.[a-zA-Z0-9]+" | xargs -I {} ln -f -s `pwd`/{} ~

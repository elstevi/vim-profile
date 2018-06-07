#!/bin/sh

# Make bundle directory
mkdir -p ~/.vim/bundle

# Clone vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# Install plugins
vim -c VundleUpdate -c quitall

# Symlink tmux configuration
ln -s ~/.vim/tmux.conf ~/.tmux.conf

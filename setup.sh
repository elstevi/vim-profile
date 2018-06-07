#!/bin/sh

# Make bundle directory
mkdir -p ~/.vim/bundle

# Clone vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# Install plugins
vim -c VundleUpdate -c quitall

# Setup tmux
rm ~/.tmux.conf
mkdir -p ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s ~/.vim/tmux/tmux.conf ~/.tmux.conf
# start a server but don't attach to it
tmux start-server
# create a new session but don't attach to it either
tmux new-session -d
# install the plugins
~/.tmux/plugins/tpm/scripts/install_plugins.sh
# killing the server is not required, I guess
tmux kill-server

# Setup csh
rm ~/.cshrc
ln -s ~/.vim/cshrc ~/.cshrc

# Setup inputrc (for bash searches how i like)
rm ~/.inputrc
ln -s ~/.vim/inputrc ~/.inputrc

# Setup bash
rm ~/.bashrc
ln -s ~/.vim/bashrc ~/.bashrc

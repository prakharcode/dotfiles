#!/bin/bash

# Install brew
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew update
fi


#==============
# Remove old dot flies
#==============
rm -rf ~/.vim > /dev/null 2>&1
rm -rf ~/.vimrc > /dev/null 2>&1
rm -rf ~/.bashrc > /dev/null 2>&1
rm -rf ~/.tmux > /dev/null 2>&1
rm -rf ~/.tmux.conf > /dev/null 2>&1
rm -rf ~/.zsh_prompt > /dev/null 2>&1
rm -rf ~/.zshrc > /dev/null 2>&1
rm -rf ~/.gitconfig > /dev/null 2>&1
rm -rf ~/.psqlrc > /dev/null 2>&1
rm -rf ~/.tigrc > /dev/null 2>&1
rm -rf ~/.config > /dev/null 2>&1
rm -rf ~/Brewfile > /dev/null 2>&1

#==============
# SYMLINK
#==============

ln -sf $PWD/.bashrc ~/.bashrc
ln -sf $PWD/.bash_profile ~/.bash_profile
ln -sf $PWD/.profile ~/.profile
ln -sf $PWD/.zshrc ~/.zshrc
ln -s $PWD/nvim ~/.config/nvim
ln -sf $PWD/tumx/tmux.conf ~/.config/tmux/tmux.conf
ln -sf ~/homebrew/Brewfile ~/Brewfile


cd ~
brew bundle
cd -

# get tmux plugins
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
~/.config/tmux/plugins/tpm/bin/update_plugins all

#==============
# Set zsh as the default shell
#==============
chsh -s /bin/zsh

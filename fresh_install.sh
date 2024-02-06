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

# Make a XDG_HOME_CONFIG directory, '.config'

# Making a directory for tmux and config at the same time
mkdir -p ~/.config/tmux


ln -Fs $PWD/.gitconfig      $HOME/.gitconfig
ln -Fs $PWD/.bashrc         $HOME/.bashrc
ln -Fs $PWD/.bash_profile   $HOME/.bash_profile
ln -Fs $PWD/.profile        $HOME/.profile
ln -Fs $PWD/.zshrc          $HOME/.zshrc
ln -Fs $PWD/.p10k.zsh       $HOME/.p10k.zsh
ln -s  $PWD/nvim            $HOME/.config/nvim
ln -s  $PWD/tmux/tmux.conf  $HOME/.config/tmux/
ln -s  $PWD/Brewfile        $HOME/Brewfile

cd ~
brew bundle
cd -

# get tmux plugins
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
~/.config/tmux/plugins/tpm/bin/install_plugins

# remove powerline default theme and link my theme
rm      $HOME/.config/tmux/plugins/tmux-powerline/themes/default.sh
ln -s   $PWD/tmux/tmux-powerline/themes/prakhar.sh $HOME/.config/tmux/plugins/tmux-powerline/themes/default.sh
ln -Fs  $PWD/tmuxinator $HOME/.config/tmuxinator 

#==============
# Set zsh as the default shell
#==============
chsh -s /bin/zsh

# Dotfiles for my setup

This repo houses most of my configuration and the files that I use day to day.
I predominantly use apple products with brew. So this setup is mostly tailored for a macOs experience.


# Development tools

## Code Editor
1. Using neovim heavily with LazyVim.
2. Keep vscode configuration in case of fallback.


## Terminal
1. Iterm 


## Documentation
1. Obsidian

## Gotchas
1. To setup icons for powerlevel10k use the p10k configuration from within zsh, that should set it up.
2. To make C-space work as your tmux prefix, switch off the input source from apple setting, `Check System Preferences → Keyboard → Shortcuts → Input Sources`.
3. To make the tmux plugin manager work there needs to be extra efforts.

# Improvements

Still need to make the `fresh_install.sh` script a single executable that fixes mostly all needs. 
What it misses currently?

1. Asking and then creating mulitple github/gitlab profile and then generating their required ssh (private/public) key, so I just have to login to these and setup the ssh key.
2. While doing the zsh configuration, making oh my zsh setup more smooth.
3. Have to run `p10k configure` to get the exact fonts for powerline to work smoothly.

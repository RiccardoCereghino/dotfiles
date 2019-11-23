#!/bin/bash

# Updates the dotfiles

# zsh
cp ~/.zshrc zsh/.zshrc

# Vim
cp ~/.vimrc vimrc/.vimrc

# nVim
cp ~/.config/nvim/init.vim nvim/init.vim

# tmux
cp ~/.tmux.conf tmux/.tmux.conf

# i3
cp ~/.i3/config i3/config

# i3status
cp ~/.i3status.conf i3status/.i3status.conf

# Compton
cp ~/.config/compton.conf compton/compton.conf

# Rofi theme
cp ~/.config/rofi/custom.rasi rofi/custom.rasi

# Xresources (changes default colors)
cp ~/.Xresources Xresources/.Xresources

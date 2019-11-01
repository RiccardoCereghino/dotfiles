#!/bin/bash

# Backup old config files
touch ~/.vimrc
mv ~/.vimrc ~/.vimrc.bak

touch ~/.i3/config
mv ~/.i3/config ~/.i3/config.bak

touch ~/.config/compton.conf
mv ~/.config/compton.conf ~/.config/compton.conf.bak

touch ~/.i3status.conf
mv ~/.i3status.conf ~/.i3status.conf.bak

touch ~/.Xresources
mv ~/.Xresources ~/.Xresources.bak

# touch ~/.config/rofi/config
# mv ~/.config/rofi/config ~/.config/rofi/config.bak


# Install the dotfiles

# Vim
cp vimrc/.vimrc ~

# i3
cp i3/config ~/.i3

# i3status
cp i3status/.i3status.conf ~

# Compton
cp compton/compton.conf ~/.config

# Rofi theme
cp rofi/custom.rasi ~/.config

# Xresources (changes default colors)
cp .Xresources ~

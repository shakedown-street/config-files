#!/bin/bash
# simple script to install all the files into the correct directories
cp -R ./home/dot_config/openbox/* ~/.config/openbox
cp -R ./home/dot_config/tint2/* ~/.config/tint2
cp ./home/dot_config/compton.conf ~/.config/compton.conf
cp -R ./home/dot_i3/* ~/.i3/
cp -R ./home/dot_themes/* ~/.themes/
cp -R ./home/dot_vim/* ~/.vim/
cp ./home/.Xresources ~/.Xresources
cp ./home/.vimrc ~/.vimrc
cp -R ./Backgrounds/* ~/Pictures/Backgrounds/
# cp -R ./tools/* ~/Documents/tools/
# cp -R ./scripts/* ~/Documents/scripts/

xrdb ~/.Xresources

# If using .vim/ and .vimrc, clone vundle, run :PluginInstall in vim and then run
# the command to make vimproc
# 
# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# cd ~/.vim/bundle/vimproc.vim && make

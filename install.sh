#!/bin/bash
# simple script to install all the files into the correct directories
cp -R ./home/dot_config/openbox/* ~/.config/openbox
cp -R ./home/dot_config/tint2/* ~/.config/
cp -R ./home/dot_i3/* ~/.i3/
cp -R ./home/dot_vim/* ~/.vim/
cp ./home/.Xresources ~/.Xresources
cp ./home/.vimrc ~/.vimrc

xrdb ~/.Xresources

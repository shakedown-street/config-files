#!/bin/bash
# simple script to install all the files into the correct directories
cp -R ./home/dot_config/openbox/* ~/.config/openbox
cp -R ./home/dot_config/tint2/* ~/.config/tint2
cp -R ./home/dot_i3/* ~/.i3/
cp -R ./home/dot_icons/* ~/.icons/
cp -R ./home/dot_themes/* ~/.themes/
cp ./home/.Xresources ~/.Xresources

xrdb ~/.Xresources

#!/bin/bash
# simple script to install all the files into the correct directories
cp -R ./home/dot_config/openbox/* ~/.config/openbox
cp -R ./home/dot_config/tint2/* ~/.config/tint2
cp ./home/dot_config/compton.conf ~/.config/compton.conf
cp -R ./home/dot_i3/* ~/.i3/
cp -R ./home/dot_themes/* ~/.themes/
cp ./home/.Xresources ~/.Xresources
cp -R ./Backgrounds/* ~/Pictures/Backgrounds/
# cp -R ./tools/* ~/Documents/tools/
# cp -R ./scripts/* ~/Documents/scripts/

xrdb ~/.Xresources

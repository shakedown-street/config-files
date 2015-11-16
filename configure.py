import os, shutil

# dirs
shutil.copy2('./home/dot_config/openbox/', '~/.config/openbox/')
shutil.copy2('./home/dot_config/tint2/', '~/.config/tint2/')
shutil.copy2('./home/dot_i3/', '~/.i3/')

# files
shutil.copy2('./home/dot_config/compton.conf', '~/.config/')
shutil.copy2('./home/.Xresources', '~/')

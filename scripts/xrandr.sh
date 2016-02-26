#!/bin/bash
# This script executes at startup and asks whether to setup for a dual or single monitor setup.
# This script is really just for me, use it if it helps, if not then delete it.
echo "dual or single monitor?"
read setting

if [ "$setting" == "dual" ]; then
  xrandr --output VGA1 --mode 1280x800 --above LVDS1
elif [ "$setting" == "single" ]; then
  xrandr --output VGA1 --off
fi

feh --randomize --bg-scale ~/Pictures/Backgrounds/
exit 1

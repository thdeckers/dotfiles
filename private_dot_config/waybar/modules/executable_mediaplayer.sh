#!/bin/sh
# copied from https://github.com/Egosummiki/dotfiles/blob/master/waybar/mediaplayer.sh
player_status=$(playerctl --player=spotify status 2> /dev/null)
if [ "$player_status" = "Playing" ]; then
    echo "$(playerctl metadata artist) - $(playerctl metadata title)"
elif [ "$player_status" = "Paused" ]; then
    echo " $(playerctl metadata artist) - $(playerctl metadata title)"
else
    echo ""
fi

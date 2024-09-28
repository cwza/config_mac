#!/bin/sh

source "$CONFIG_DIR/colors.sh" # Loads all defined colors

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME background.drawing=on \
                           background.color=$GREY
else
    sketchybar --set $NAME background.drawing=off
fi

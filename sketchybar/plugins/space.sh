#!/bin/sh

source "$CONFIG_DIR/colors.sh" # Loads all defined colors

if [ -n "$FOCUSED_WORKSPACE" ]; then
    if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
        sketchybar --set $NAME background.drawing=on \
                               background.color=$GREY
    else
        sketchybar --set $NAME background.drawing=off
    fi
fi

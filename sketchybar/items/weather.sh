#!/bin/sh

sketchybar --add item weather right \
  --set weather \
  script="$CONFIG_DIR/plugins/weather.sh" \
  update_freq=1500 \
  --subscribe weather mouse.clicked

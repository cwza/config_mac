#!/bin/bash

# ------------- For Mac Built-In Workspace
# SPACE_SIDS=(1 2 3 4 5 6 7 8 9 10)
#
# for sid in "${SPACE_SIDS[@]}"
# do
#   sketchybar --add space space.$sid left                                 \
#              --set space.$sid space=$sid                                 \
#                               icon=$sid                                  \
#                               label.font="sketchybar-app-font:Regular:16.0" \
#                               label.padding_right=20                     \
#                               label.y_offset=-1                          \
#                               script="$CONFIG_DIR/plugins/space.sh"              
# done
#
# sketchybar --add item space_separator left                             \
#            --set space_separator icon="󰥭"                                \
#                                  icon.color=$ACCENT_COLOR \
#                                  icon.padding_left=4                   \
#                                  label.drawing=off                     \
#                                  background.drawing=off                \
#                                  script="$CONFIG_DIR/plugins/space_windows.sh" \
#            --subscribe space_separator space_windows_change                           


# -------------- For Aerospace Workspace
FOCUSED_WORKSPACE=$(aerospace list-workspaces --focused)
sketchybar --add event aerospace_workspace_change
for mid in $(aerospace list-monitors | awk '{print $1}'); do
    for sid in $(aerospace list-workspaces --monitor $mid); do
        sketchybar --add space space.$sid left \
            --subscribe space.$sid aerospace_workspace_change \
            --set space.$sid "${space[@]}" \
            display=$mid \
            icon=$sid \
            label.font="sketchybar-app-font:Regular:16.0" \
            label.padding_right=20                     \
            label.y_offset=-1                          \
            background.border_width=0 \
            click_script="aerospace workspace $sid" \
            script="$CONFIG_DIR/plugins/space.sh $sid"
        if [ "$sid" = "$FOCUSED_WORKSPACE" ]; then
            sketchybar --set space.$sid background.drawing=on background.color=$GREY
        else
            sketchybar --set space.$sid background.drawing=off
        fi
    done
    for sid in $(aerospace list-workspaces --monitor $mid --empty); do
        sketchybar -m --set space.$sid icon.color=$WHITE label.color=$WHITE
    done
done

sketchybar --add item space_separator left                             \
           --set space_separator icon=""                                \
                                 icon.color=$ACCENT_COLOR \
                                 icon.padding_left=4                   \
                                 label.drawing=off                     \
                                 background.drawing=off                \
                                 script="$CONFIG_DIR/plugins/space_windows.sh" \
           --subscribe space_separator space_windows_change 


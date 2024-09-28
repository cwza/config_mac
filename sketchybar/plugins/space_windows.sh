#!/bin/bash

# ---------- For Mac Builtin Workspace
# if [ "$SENDER" = "space_windows_change" ]; then
#   space="$(echo "$INFO" | jq -r '.space')"
#   apps="$(echo "$INFO" | jq -r '.apps | keys[]')"
#
#   icon_strip=" "
#   if [ "${apps}" != "" ]; then
#     while read -r app
#     do
#       icon_strip+=" $($CONFIG_DIR/plugins/icon_map_fn.sh "$app")"
#     done <<< "${apps}"
#   else
#     icon_strip=" —"
#   fi
#
#   sketchybar --set space.$space label="$icon_strip"
# fi

# ---------- For Aerospace Workspace
source "$CONFIG_DIR/colors.sh"

reload_workspace_icon() {
    apps=$(aerospace list-windows --workspace "$2" | awk -F'|' '{gsub(/^ *| *$/, "", $2); print $2}')

    icon_strip=""
    if [ "${apps}" != "" ]; then
        while read -r app
        do
            app_icon="$($CONFIG_DIR/plugins/icon_map_fn.sh "$app")"
            if [[ "$icon_strip" != *"$app_icon"* ]]; then
                icon_strip+="$app_icon"
            elif [[ "$icon_strip" != *"$app_icon*"* ]]; then
                icon_strip="${icon_strip//$app_icon/}" # Remove the existing icon without an asterisk
                icon_strip+="$app_icon*"
            fi
        done <<< "${apps}"

        args+=(--animate sin 10 --set space.$2 label="$icon_strip" icon.color=$ACCENT_COLOR label.color=$ACCENT_COLOR)
    else
        args+=(--set space.$2 label=" -" icon.color=$WHITE label.color=$WHITE)
    fi
    sketchybar -m "${args[@]}"
}

if [ "$SENDER" = "space_windows_change" ]; then
    focused=$(aerospace list-workspaces --focused)
    # Couldn't find a way to detect on which workspaces a window is destroyed so have to reload all workspaces
    for mid in $(aerospace list-monitors | awk '{print $1}'); do
        for sid in $(aerospace list-workspaces --monitor $mid); do
            reload_workspace_icon $mid $sid $focused
        done
    done
fi


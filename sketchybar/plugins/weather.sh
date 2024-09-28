source $CONFIG_DIR/colors.sh

sketchybar --set $NAME \
  label="Loading..." \
  icon.color=$WHITE

LOCATION="New_Taipei"
LANG="zh_tw"
COMMAND="curl -s https://wttr.in/$LOCATION?format=%c%C+%t&lang=$LANG"

sketchybar --set $NAME \
    label="$($COMMAND)"


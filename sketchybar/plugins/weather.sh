source $CONFIG_DIR/colors.sh

sketchybar --set $NAME \
  label="Loading..." \
  icon.color=$WHITE

sketchybar --set $NAME \
    label="$(curl -s 'https://wttr.in/?format=%c%C+%t&lang=zh_tw')"


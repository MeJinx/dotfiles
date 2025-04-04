#! /usr/bin/env bash

CFG_TERM=$(cat "$HOME/.config/bspwm/src/config/.term")
slop=$(slop -f "%g") ||  exit 1
read -r G <<< $slop
bspc rule -a \* -o state=floating rectangle=$G
if [[ "$CFG_TERM" == "kitty" ]]; then
    GLFW_IM_MODULE=ibus kitty &
else
    $CFG_TERM &
fi

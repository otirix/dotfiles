#!/usr/bin/env sh

# Get current border_size value
BORDER_SIZE=$(hyprctl getoption general:border_size | sed -n '1p' | awk '{print $2}')

# Toggle logic
if [ "$BORDER_SIZE" = "1" ]; then
  hyprctl keyword general:border_size 0
else
  hyprctl keyword general:border_size 1
fi

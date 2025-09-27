#!/bin/bash

# Check if rofi is already running
if pgrep -x rofi >/dev/null; then
    pkill -x rofi
else
    query=$(rofi -dmenu -theme ~/.config/scripts/rofi-google-search/google-search-theme.rasi -p "Search:")
    if [[ -n "$query" ]]; then
        brave "https://www.google.com/search?q=$(echo "$query" | sed 's/ /+/g')"
    fi
fi


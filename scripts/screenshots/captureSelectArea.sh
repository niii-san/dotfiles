#!/bin/bash

# Take screenshot to file
grim -g "$(slurp)" /tmp/screenshot.png

# Crop 1px from all sides to remove slurp fade
convert /tmp/screenshot.png -shave 1x1 /tmp/screenshot.png

# Open in swappy
swappy -f /tmp/screenshot.png

dunstify "Selected Screenshot" "Took a screenshot (selected) " -u low

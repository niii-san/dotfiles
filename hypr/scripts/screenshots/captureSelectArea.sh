#!/bin/bash

grim -g "$(slurp)" /tmp/screenshot.png && swappy -f /tmp/screenshot.png

dunstify "Selected Screenshot" "Took an screenshot (selected) " -u low

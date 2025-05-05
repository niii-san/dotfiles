#!/bin/bash

grim /tmp/fullscreenscreenshot.png && swappy -f /tmp/fullscreenscreenshot.png 

dunstify "Full Screenshot" "Took a screenshot (full screen) " -u low

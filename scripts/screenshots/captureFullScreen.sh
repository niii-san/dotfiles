#!/bin/bash

grim /tmp/fullscreenscreenshot.png && swappy -f /tmp/fullscreenscreenshot.png 

dunstify "Full Screenshot" "Took an screenshot (full screen) " -u low

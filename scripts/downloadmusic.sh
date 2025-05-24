#!/bin/bash

# Check if a URL argument was provided
if [ -z "$1" ]; then
  echo "Usage: $0 <YouTube-URL>"
  exit 1
fi

URL="$1"

# Download and save as "Artist - Title.mp3" (if video title matches that format)
yt-dlp -f bestaudio \
  --extract-audio \
  --audio-format mp3 \
  --audio-quality 0 \
  --embed-metadata \
  --add-metadata \
  --write-thumbnail \
  --embed-thumbnail \
  --output "%(title)s.%(ext)s" \
  --metadata-from-title "%(artist)s - %(title)s" \
  "$URL"

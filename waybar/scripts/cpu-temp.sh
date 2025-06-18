#!/usr/bin/env bash

# CPU model name (cleaned up)
model=$(awk -F ': ' '/model name/{print $2}' /proc/cpuinfo | head -n 1 | sed 's/@.*//; s/(R)//g; s/(TM)//g; s/^[ \t]*//; s/[ \t]*$//')

# Get CPU frequency
get_cpu_frequency() {
  freqlist=$(awk '/cpu MHz/ {print $4}' /proc/cpuinfo)
  maxfreq_file="/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

  if [[ -z "$freqlist" || ! -f "$maxfreq_file" ]]; then
    echo "--"
    return
  fi

  maxfreq=$(< "$maxfreq_file")
  avg=$(echo "$freqlist" | awk '{sum+=$1} END {printf "%.0f", sum/NR}')
  echo "${avg}/$((maxfreq / 1000)) MHz"
}

# Get CPU temperature in °C and °F
get_cpu_temperature() {
  temp=$(sensors 2>/dev/null | awk -F '[+.]' '/Package id 0/ {print $2; exit}')
  if [[ -z "$temp" ]]; then
    temp=$(sensors 2>/dev/null | awk -F '[+.]' '/Tctl/ {print $2; exit}')
  fi

  if [[ -z "$temp" ]]; then
    temp=0
    temp_f=32.0
  else
    temp_f=$(awk "BEGIN {printf \"%.1f\", ($temp * 9 / 5) + 32}")
  fi

  echo "$temp $temp_f"
}


# Return appropriate temperature icon
get_temperature_icon() {
  temp_value=$1
  if [ "$temp_value" = "--" ]; then
    echo "󱔱"  # Unknown
  elif [ "$temp_value" -ge 80 ]; then
    echo "󰸁"  # High
  elif [ "$temp_value" -ge 70 ]; then
    echo "󱃂"  # Medium
  elif [ "$temp_value" -ge 60 ]; then
    echo "󰔏"  # Normal
  else
    echo "󱃃"  # Low
  fi
}

# Collect data
cpu_frequency=$(get_cpu_frequency)
read -r temp temp_f < <(get_cpu_temperature)
icon=$(get_temperature_icon "$temp")

# Color text if temperature is high
if [ "$temp" = "--" ] || [ "$temp" -ge 80 ]; then
  text_output="<span color='#f38ba8'>${icon} ${temp}°C</span>"
else
  text_output="${icon} ${temp}°C"
fi

tooltip=":: ${model}\nClock Speed: ${cpu_frequency}\nTemperature: ${temp_f}°F"

# Output JSON for Waybar
echo "{\"text\": \"$text_output\", \"tooltip\": \"$tooltip\"}"


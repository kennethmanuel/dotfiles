#!/bin/bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/taskwarriorbar.log
polybar taskwarriorbar 2>&1 | tee -a /tmp/taskwarriorbar.log &
disown

for m in $(polybar --list-monitors | cut -d":" -f1); do
  MONITOR=$m polybar --reload mainbar &
done

echo "Bars launched..."

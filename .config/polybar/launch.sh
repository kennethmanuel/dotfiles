#!/bin/bash

# Terminate already running bar instances
killall -q polybar

if type "xrandr"; then
	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
		MONITOR=$m polybar --reload mainbar &
		MONITOR=$m polybar --reload taskwarriorbar &
	done
else
	polybar --reload example &
fi

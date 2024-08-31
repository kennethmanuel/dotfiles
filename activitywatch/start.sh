#!/bin/bash

cd /home/kenneth/.cache/yay/activitywatch-bin/src/activitywatch

./aw-watcher-afk/aw-watcher-afk &
./aw-watcher-window/aw-watcher-window & # you can add --exclude-title here to exclude window title tracking for this session only
notify-send "ActivityWatch started"     # Optional, sends a notification when ActivityWatch is started
./aw-server/aw-server

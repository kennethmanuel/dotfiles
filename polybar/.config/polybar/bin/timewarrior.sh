#!/bin/sh

if [ "$(cat /tmp/tw_polybar_id)" == "" ]; then
	printf "no tracking"
else
	project=$(task _get "$(cat /tmp/tw_polybar_id)".project)
	description=$(task _get "$(cat /tmp/tw_polybar_id)".description)

	if timew >/dev/null 2>&1; then
		printf "$(timew summary :day "$project" "$description" | awk '{print $NF}' | tail -2 | head -1)"
	else
		printf "no tracking"
	fi

	if [ "${1}" = "--toggle" ]; then
		if timew; then
			task "$(cat /tmp/tw_polybar_id)" stop
		else
			task "$(cat /tmp/tw_polybar_id)" start
		fi
	fi

fi

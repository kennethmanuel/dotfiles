#!/bin/sh

if [ "$(cat ~/.tw_started_id)" == "" ]; then
	printf "no tracking"
else
	project=$(task _get "$(cat ~/.tw_started_id)".project)
	description=$(task _get "$(cat ~/.tw_started_id)".description)

	if timew >/dev/null 2>&1; then
		printf "$(timew summary :day "$project" "$description" | awk '{print $NF}' | tail -2 | head -1)"
	else
		printf "no tracking"
	fi

	if [ "${1}" = "--toggle" ]; then
		if timew; then
			task "$(cat ~/.tw_started_id)" stop
		else
			task "$(cat ~/.tw_started_id)" start
		fi
	fi

fi

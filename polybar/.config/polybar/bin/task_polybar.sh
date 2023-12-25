#!/bin/bash
# This script is used by polybar config.ini which is executed by taskwarrior module on an interval

if [ "$(cat ~/.tw_started_id)" == "" ]; then
	echo ""
else
	current_started_task_uuid=$(cat ~/.tw_started_id)
	current_started_task_desc=$(task $current_started_task_uuid rc.verbose: rc.report.next.columns:description rc.report.next.labels:1 next)
	current_started_task_due=$(task $current_started_task_uuid rc.verbose: rc.report.next.columns:due.relative rc.report.next.labels:1 next)

	echo "$current_started_task_desc ·  $most_urgent_due"
fi

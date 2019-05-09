#!/bin/bash
while :
do
	adb pull /tmp/recovery.log ~/recovery.log \
		| grep -v "adb: error: failed to get feature set: no devices/emulators found"
	cat ~/recovery.log 2>/dev/null
	sleep 0.1 # Milliseconds
done

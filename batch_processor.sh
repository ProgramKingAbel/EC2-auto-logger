#!/bin/bash

# initialize dir path
myFiles=~/myFiles

# ensure dir exists
mkdir -p "$myFiles"

# prefix

myName="Abel"
fileNumberTracker="$myFiles/.fileNumber"

if [ -f "$fileNumberTracker" ]; then
	fileNumber=$(< "$fileNumberTracker")
else
	touch "$fileNumberTracker"
	fileNumber=1;
fi


cd "$myFiles" || exit

for ((i = 1; i <=25; i++)); do
	touch "${myName}${fileNumber}"
	((fileNumber++))
done

echo "$fileNumber" > "$fileNumberTracker"

ls -la "$myFiles"



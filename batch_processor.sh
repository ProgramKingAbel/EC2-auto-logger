#!/bin/bash

# initialize dir path
myFiles=~/myFiles

# ensure dir exists
mkdir -p "$myFiles"

# prefix

myName="Abel"

if [ -f "$myFiles/.fileNumber" ]; then
	fileNumber=$(< "$myFiles/.fileNumber")
else
	touch "$myFiles/.fileNumber"
	fileNumber=0;
fi


cd "$myFiles" || exit

for ((i = 1; i <=25; i++)); do
	touch "${myName}${fileNumber}"
	((fileNumber++))
done

echo "$fileNumber" > "$myFiles/.fileNumber"

ls -la "$myFiles"



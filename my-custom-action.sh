#!/bin/bash

inputpath=$1


check= $(cat "$inputpath" | grep -iE 'moderate|critical')
echo $check
# check=$( echo "$inputpath" | grep -iE 'moderate|critical')


if [[ -z "$check" ]]; then
message="ALL GOOD!"
else
message="ALERT!"
fi

echo $message
echo "sum-audit=$message" >> $GITHUB_OUTPUT
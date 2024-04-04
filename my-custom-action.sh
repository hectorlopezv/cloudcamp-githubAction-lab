#!/bin/bash

inputpath=$1
message="ALL GOOD!"

check= $(cat "$inputpath" | grep -iE 'moderate|critical')
# check=$( echo "$inputpath" | grep -iE 'moderate|critical')


if [[ "$check" ]]

then

message="ALERT!"

fi

echo "sum-audit=$message" >> $GITHUB_OUTPUT
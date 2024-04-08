#!/bin/sh

auditFile=$1
auditOutput=$(cat $auditFile | grep -v 'npm')
echo $auditOutput

summary=":white_check_mark: All Good! No critical or moderate vulnerabilities found"

if [ $(echo "$auditOutput" | grep -iE "moderate|critical") ]; then
    summary=":fire: ALERT! Some vulnerabilites were found! Please check the report details!"
fi

echo "$summary"
echo "audit-summary=$summary" >> $GITHUB_OUTPUT


# #!/bin/bash

# inputpath=$1


# check= $(cat "$inputpath" | grep -iE 'moderate|critical')
# echo $check
# # check=$( echo "$inputpath" | grep -iE 'moderate|critical')


# if [[ -z "$check" ]]; then
# message="ALL GOOD!"
# else
# message="ALERT!"
# fi

# echo $message
# echo "sum-audit=$message" >> $GITHUB_OUTPUT
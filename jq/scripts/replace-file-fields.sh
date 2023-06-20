#! /bin/sh

empProject="{\"projectId\":\"1\",\"projectName\":\"Project 1\"}"

empDetails=$(
  jq -n \
    --arg empName "ChaloCodeKare" \
    --argjson empProject "{\"projectId\":\"1\",\"projectName\":\"Project 1\"}" \
    -f ../resources/emp_details.json
)

echo empDetails=${empDetails}

cmd /k

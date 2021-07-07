#/bin/bash

L=$(cat a.json | jq -r '.results[].urls.raw'); for i in $L; do echo "${i}&cs=tinysrgb&fm=jpg&fit=facearea&facepad=4&q=60&w=256&h=256"; done > userpics.txt
L=$(cat a.json | jq -r '.results[].urls.raw'); (echo '['; for i in $L; do echo "  \"${i}&cs=tinysrgb&fm=jpg&fit=facearea&facepad=4&q=60&w=256&h=256\","; done; echo ']';) > userpics.json

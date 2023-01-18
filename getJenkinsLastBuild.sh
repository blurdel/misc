#!/bin/bash

me=$(basename $0)
# echo "me: ${me} $@"

if [[ $# -lt 1 || $# -gt 2 ]]; then
    echo "usage: $0 <job-name> [branch]"
    exit 1
fi

jobname="${1}"
branch="${2:-main}"
echo "Running ${jobname} ${branch}"

# Encode the URL
URL="http://localhost:8080/job/${jobname}/job/${branch}/lastSuccessfulBuild/api/json"
echo "URL: ${URL}"

curl -X POST -vL --user auto:"$(< auto.TOKEN)"  "${URL}" | jq -r ".id, .timestamp, .url"
echo "retVal=$?"

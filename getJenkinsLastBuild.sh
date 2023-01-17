#!/bin/bash

# Encode the URL
URL="http://localhost:8080/job/jenkins-hello-world/job/main/lastSuccessfulBuild/api/json"
echo "URL: ${URL}"

curl -X POST -vL --user auto:"$(< auto.TOKEN)"  "${URL}" | jq -r ".id, .timestamp, .url"
echo "retVal=$?"

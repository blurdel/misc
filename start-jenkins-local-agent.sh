#!/bin/bash

# sudo crontab -e
# @reboot /home/jenkins/bin/startJenkinsAgent.sh

pid=$( ps -ef | grep -v grep | grep agent.jar | awk '{print $2}' )
if [[ ! -z ${pid} ]]; then
    echo "Jenkins Agent is already running, pid=${pid}"
    exit 1
fi

curl -sO http://localhost:8888/jnlpJars/agent.jar
java -jar agent.jar -jnlpUrl http://localhost:8888/computer/LocalAgent/jenkins-agent.jnlp -secret abc123 -workDir "/home/jenkins/Programs/jenkins-agent" &


#!/bin/bash

# sudo crontab -e
# @reboot /home/jenkins/bin/startJenkins.sh

pid=$( ps -ef | grep -v grep | grep jenkins.war | awk '{print $2}' )
if [[ ! -z ${pid} ]]; then
    echo "Jenkins is already running, pid=${pid}"
    exit 1
fi

cd ~/Programs/jenkins-jar
JENKINS_HOME=~/.jenkins  java -Dhudson.plugins.git.GitSCM.ALLOW_LOCAL_CHECKOUT=true -jar jenkins.war --httpPort=8888 &


#!/bin/sh

JAVA_CMD="java"

if [[ ! -z "$DEBUG_REMOTE" ]]; then
    JAVA_CMD="java -agentlib:jdwp=transport=dt_socket,address=8000,server=y,suspend=n"
fi

if [[ ! -z "$DEBUG_REMOTE_SUSPEND" ]]; then
    JAVA_CMD="java -agentlib:jdwp=transport=dt_socket,address=8000,server=y,suspend=y"
fi

$JAVA_CMD -jar /service/service.jar

#!/bin/bash

OPTS="-f /task/tasks.py --host=$TARGET_HOST"

if [[ "$LOCUST_MODE" = "master" ]]; then
    OPTS="$OPTS --master"
elif [[ "$LOCUST_MODE" = "worker" ]]; then
    OPTS="$OPTS --worker --master-host=$LOCUST_MASTER"
fi

/usr/local/bin/locust $OPTS


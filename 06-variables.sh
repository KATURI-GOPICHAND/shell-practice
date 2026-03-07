#!/bin/bash

START_TIME=$(date +%s)
echo "script executed at : $STAR_TTIME"

sleep 10
END_TIME=$(date +%s)
TOTAL_TIME=$(($END_TIME-$START_TIME))
echo "script executed in : $TOTAL_TIME seconds"
#!/bin/bash

INTERVAL=$1
TO_SHOW=1

echo start monitoring $TO_SHOW processes with $INTERVAL seconds interval

while sleep $INTERVAL
do
    echo $(ps -eo pcpu,pid -o comm= | sort -k1 -n -r | head -$TO_SHOW)
done

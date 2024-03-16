#!/bin/bash

RRD_DB="ram_usage.rrd"

while true; do
    RAM_USED=$(free | awk 'NR==2{print $3}')
    echo "RAM_USED: $RAM_USED"
    rrdtool update $RRD_DB N:$RAM_USED
    sleep 5
done


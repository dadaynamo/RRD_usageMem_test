#!/bin/bash

RRD_DB="ram_usage.rrd"

# Crea il nuovo database RRD
rrdtool create $RRD_DB \
--step 5 \
DS:used:GAUGE:10:0:U \
RRA:AVERAGE:0.5:1:1200 \
RRA:AVERAGE:0.5:12:2400 \
RRA:AVERAGE:0.5:288:365

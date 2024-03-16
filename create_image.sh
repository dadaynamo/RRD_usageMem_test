#!/bin/bash

# Percorso del database RRD
RRD_DB="ram_usage.rrd"

# Percorso dell'immagine di output
OUTPUT_IMAGE="ver1_ram_usage.png"

#Calcolo il timestamp 10 minuti fa
START_TIME=$(date -d '10 minutes ago' +%s)

# Generazione del grafico PNG
rrdtool graph $OUTPUT_IMAGE \
--start $START_TIME \
--end now \
DEF:used=$RRD_DB:used:AVERAGE \
LINE1:used#FF0000:"RAM Usage"

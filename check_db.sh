#!/bin/bash

# Percorso del database RRD
RRD_DB="ram_usage.rrd"

# Utilizza il comando rrdtool fetch per recuperare i dati dal database
# e visualizzarli sulla console
rrdtool fetch $RRD_DB AVERAGE

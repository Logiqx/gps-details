#!/usr/bin/sh

DEVICES=/mnt/c/Users/mwgeo/AppData/Roaming/Garmin/ConnectIQ/Devices

IN=data/apps/appro/supported-models.json
TMP=data/apps/appro/supported-models.tmp
CSV=data/apps/appro/supported-models.csv

for DEVICE in $(cut -d'"' -f2 $IN)
do
  jq -r '.partNumbers[] | .number' $DEVICES/$DEVICE/compiler.json
done >$TMP

REF=data/devices/garmin/deviceTypes.csv

for MODEL in $(cat $TMP)
do
  grep $MODEL $REF
done | sort -f -t, -k2 >$CSV

rm $TMP

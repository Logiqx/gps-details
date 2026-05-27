#!/usr/bin/sh

DEVICES=/mnt/c/Users/mwgeo/AppData/Roaming/Garmin/ConnectIQ/Devices

IN=data/apps/appro/supported-models-in.txt
OUT=data/apps/appro/supported-models-out.txt

for DEVICE in $(cut -d'"' -f2 $IN)
do
  jq -r '.deviceId + "," + .displayName + "," + (.partNumbers[] | .number + "," + .connectIQVersion) + "," + .displayType + "," + .deviceFamily + "," + .deviceGroup' $DEVICES/$DEVICE/compiler.json
done >$OUT

for MODEL in $(cut -d, -f3 $OUT | sed 's/006-B//;s/-00//')
do
  echo $MODEL:$(cat docs/devices/garmin/watches/*md | grep -c $MODEL)
done | grep :0 | sort -n

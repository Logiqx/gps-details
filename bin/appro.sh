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
done | sort >$CSV

echo "Models that may be missing support:"
echo

VER=data/devices/garmin/versions.csv

diff data/apps/appro/supported-models.csv data/devices/garmin/deviceTypes.csv | grep '^>' | egrep -v 'Edge|GPSMAP|Montana|eTrex' | sed 's/> //;s/,.*//' >$TMP

for DEVICE in $(cat $TMP)
do
  API=$(grep $DEVICE $VER | egrep -v ',[12]\.|,3\.0' | cut -d, -f2)

  if [ -n "$API" ]
  then
    echo $(grep $DEVICE $REF),$API
  fi
done

echo
echo "Models missing in my list of Garmin watches:"
echo

for PART in $(cut -d, -f1 $CSV | sed -E 's/...-.(....)-../\1/')
do
  echo $PART:$(cat docs/devices/garmin/watches/*.md | grep -c $PART)
done | grep :0 | sed 's/:0//' >$TMP

for PART in $(cat $TMP)
do
  grep $PART $REF
done

rm $TMP

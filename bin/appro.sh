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

echo "Models that may be missing support:"
echo

diff data/apps/appro/supported-models.csv data/devices/garmin/deviceTypes.csv | grep '^>' >$TMP
egrep -v 'Edge|GPSMAP|Montana|Oregon|Rino|fēnix 3|eTrex|epix$|D2 Bravo|D2 Charlie|Forerunner [1-9][23]|ForeAthlete [1-9][23]|Fore.* 45|Venu Sq.$|Garmin Swim 2|Venu Sq. Music|vívoactive$|vívoactive 3 Mercedes|vívoactive HR|vivolife' $TMP

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

#!/usr/bin/sh

API=data/devices/garmin/deviceTypes.json
SDK=/mnt/c/Users/mwgeo/AppData/Roaming/Garmin/ConnectIQ/Devices

API_TMP=api.tmp
SDK_TMP=sdk.tmp

jq -r '.[] | .partNumber' $API | sort >$API_TMP
jq -r '.partNumbers[] | .number' $SDK/*/compiler.json | sort >$SDK_TMP

echo "Connect IQ Compatible Devices (API) that are not in compiler.json files (SDK):"
echo

for PART in $(comm -2 -3 $API_TMP $SDK_TMP)
do
  jq -r ".[] | select(.partNumber==\"$PART\") | [.partNumber, .name] | join(\",\")" $API
done

echo
echo "Devices in compiler.json files (SDK) but not in Connect IQ Compatible Devices (API):"
echo

for PART in $(comm -1 -3 $API_TMP $SDK_TMP)
do
  for JSON in $(grep -l $PART $SDK/*/compiler.json)
  do
    echo $PART,$(jq -r '.displayName' $JSON)
  done
done

rm $API_TMP $SDK_TMP

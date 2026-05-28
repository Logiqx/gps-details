#!/usr/bin/sh

DATA_DIR=data/devices/garmin

TMP=$DATA_DIR/deviceTypes.tmp
OUT=$DATA_DIR/deviceTypes.json

curl -o $TMP https://apps.garmin.com/api/appsLibraryExternalServices/api/asw/deviceTypes
echo

jq . $TMP >$OUT
rm $TMP

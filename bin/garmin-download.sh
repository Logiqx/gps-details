#!/usr/bin/sh

DATA_DIR=data/devices/garmin

TMP=$DATA_DIR/deviceTypes.tmp
OUT=$DATA_DIR/deviceTypes.json

curl -o $TMP https://apps.garmin.com/api/appsLibraryExternalServices/api/asw/deviceTypes
echo

jq . $TMP >$OUT
rm $TMP

CSV=$DATA_DIR/deviceTypes.csv
jq -r '.[] | (.partNumber + "," + .name)' $OUT | sed 's/™//;s/®//' | sort -f -t, -k2 >$CSV

TXT=$DATA_DIR/deviceTypes.txt
sed -E 's/(006-B)(....)(-00),(.*)/| \2 | \4 | \1\2\3 |/' $CSV >$TXT

CSV=$DATA_DIR/deviceTypesWide.csv
jq -r '.[] | [.partNumber, .name] +  [.additionalNames[]] | join(",")' $OUT | sort -f -t, -k2 >$CSV

#!/usr/bin/sh

SDK=/mnt/c/Users/mwgeo/AppData/Roaming/Garmin/ConnectIQ/Devices
CSV=data/devices/garmin/versions.csv

jq -r '.partNumbers[] | .number + "," + .connectIQVersion' $SDK/*/compiler.json >$CSV


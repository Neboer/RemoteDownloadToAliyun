#!/usr/bin/env bash
# usage: ./download.sh <dirname> <url or command>
mkdir "$1"
cd "$1"
if [[ "$2" == youtube-dl* ]]
then
eval "$2"
else
aria2c "$2" --seed-time=0
fi

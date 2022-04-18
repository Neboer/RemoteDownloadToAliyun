#!/usr/bin/env bash
# usage: ./download.sh <dirname> <url or command>
mkdir "$1"
cd "$1"
if [[ "$2" == yt-dlp* ]]
then
eval "$2"
elif [[ "$2" == git* ]]
then
eval "$2"
tar -czf $(ls |head -1).tar.gz *
else
aria2c "$2" --seed-time=0
fi

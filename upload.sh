#!/usr/bin/env bash
# download file(s) and upload to aliyun drive.
# usage: ./upload.sh <NewFolderName> <TargetURL>

# test user has command
if ! command -v aria2c &> /dev/null
then
    echo "<the_command> could not be found"
    exit
fi
if ! command -v aliyunpan &> /dev/null
then
    echo "<the_command> could not be found"
    exit
fi

mkdir "$1"
cd "$1"
aria2c "$2"
cd ..
aliyunpan upload "$1"
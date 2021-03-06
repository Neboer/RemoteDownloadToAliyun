#!/usr/bin/env bash
# prepare environment for url, need run as user not sudo
# usage: ./prepare.sh <url or command>
# env:
#  REFRESH_TOKEN: ${{ secrets.REFRESH_TOKEN }}

# prepare environment
sudo apt-get update
sudo apt install -y python3
sudo python -m pip install git+https://github.com/wxy1343/aliyunpan.git
mkdir -p ~/.config && echo "refresh_token: '$REFRESH_TOKEN'"  >  ~/.config/aliyunpan.yaml
if [[ "$1" == yt-dlp* ]]
then
sudo python3 -m pip install yt-dlp
elif [[ "$1" == git* ]]
then
sudo apt-get install -y git
else
sudo apt-get install -y aria2
fi

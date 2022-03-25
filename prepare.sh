#!/usr/bin/env bash
# prepare environment for url, need run as user not sudo
# usage: ./prepare.sh <url or command>
# env:
#  REFRESH_TOKEN: ${{ secrets.REFRESH_TOKEN }}

# prepare environment
sudo apt install -y python3
sudo python -m pip install git+https://github.com/wxy1343/aliyunpan.git
mkdir -p ~/.config && echo "refresh_token: '$REFRESH_TOKEN'"  >  ~/.config/aliyunpan.yaml
if [[ $1 == youtube-dl* ]]
then
sudo apt install -y youtube-dl
else
sudo apt install -y aria2c
fi

#!/bin/bash
FFMAPPATH='/opt/nord-ffmap-backend'
FASTDFPATH='/opt/nord-ffmap-backend/keys'
AJPATH='/usr/local/bin'

if [ $(pgrep -c $(basename $0)) -gt 1 ]; then 
  echo $(basename $0) is already running
  exit 0
fi

cd $FFMAPPATH
python2 ./generate_aliases.py $FASTDFPATH >$FFMAPPATH/outjson/aliases.json
python3 $FFMAPPATH/backend.py -d /$FFMAPPATH/outjson/ --aliases $FFMAPPATH/outjson/aliases.json $FFMAPPATH/gateway.json -m bat-ffnord:/var/run/alfred.bat-ffnord.sock \
 --vpn fe:ed:be:ef:ff:00 \
 --vpn fe:ed:be:ef:ff:01 \
 --vpn fe:ed:be:ef:ff:02 \
 --vpn fe:ed:be:ef:ff:03 \
 --vpn fe:ed:be:ef:ff:04 \
 --vpn fe:ed:be:ef:ff:05 \
 --vpn fe:ed:be:ef:ff:06 \
 --vpn fe:ed:be:ef:ff:07 \
 --vpn fe:ed:be:ef:ff:08 \
 --vpn fe:ed:be:ef:ff:09 \
 --vpn fe:ed:be:ef:ff:10 \
 --vpn fe:ed:be:ef:ff:11 \
 --vpn fe:ed:be:ef:ff:12 \
 --vpn fe:ed:be:ef:ff:13 \
 --vpn fe:ed:be:ef:ff:14 \
 --vpn fe:ed:be:ef:ff:15 -p 15
$AJPATH/alfred-json -s /var/run/alfred.bat-ffnord.sock -r 158 -z >/$FFMAPPATH/outjson/alfred.158.json

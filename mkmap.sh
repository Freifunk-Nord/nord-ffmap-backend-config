#!/bin/bash
FFMAPPATH='/opt/ffmap-backend'
FASTDFPATH='/opt/ffmap-backend/keys'
AJPATH='/usr/local/bin'


cd $FFMAPPATH
python2 ./generate_aliases.py $FASTDFPATH >$FFMAPPATH/outjson/aliases.json
python3 $FFMAPPATH/backend.py -d /$FFMAPPATH/outjson/ --aliases $FFMAPPATH/outjson/aliases.json $FFMAPPATH/gateway.json -m bat-ffnord:/var/run/alfred.bat-ffnord.sock --vpn fe:ed:be:ff:be:ef:ff:00 --vpn fe:ed:be:ef:ff:01 --vpn fe:ed:be:ef:ff:02 --vpn fe:ed:be:ef:ff:03 --vpn fe:ed:be:ef:ff:04 --vpn fe:ed:be:ef:ff:05 --vpn fe:ed:be:ef:ff:06 --vpn fe:ed:be:ef:ff:07 --vpn fe:ed:be:ef:ff:08 --vpn fe:ed:be:ef:ff:09 --vpn fe:ed:be:ef:ff:10 --vpn fe:ed:be:ef:ff:11 -p 15
#python3 $FFMAPPATH/backend.py -d /$FFMAPPATH/outjson/ --aliases $FFMAPPATH/outjson/aliases.json $FFMAPPATH/gateway.json -m bat-ffnord:/var/run/alfred.bat-ffnord.sock --vpn fe:ed:be:ff:be:ef:ff:00 --vpn fe:ed:be:ef:ff:02 --vpn fe:ed:be:ef:ff:03 --vpn fe:ed:be:ef:ff:05 --vpn fe:ed:be:ef:ff:06 --vpn fe:ed:be:ef:ff:07 -p 15
$AJPATH/alfred-json -s /var/run/alfred.bat-ffnord.sock -r 158 -z >/$FFMAPPATH/outjson/alfred.158.json

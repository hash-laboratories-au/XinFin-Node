#!/bin/sh

WORKDIR=/root/XinFin/XinFin-Node/devnet
cd $WORKDIR

rm -f xdcchain-1/xdc.log.bak
mv xdcchain-1/xdc.log xdcchain-1/xdc.log.bak | true
rm -f xdcchain-2/xdc.log.bak
mv xdcchain-2/xdc.log xdcchain-2/xdc.log.bak | true
TIME=$(date +%s) HOSTIP=$(curl https://checkip.amazonaws.com) docker-compose -f docker-compose.yml up --build --force-recreate -d

sleep 3
systemctl restart td-agent
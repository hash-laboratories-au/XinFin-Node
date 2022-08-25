#!/bin/sh

WORKDIR=/root/XinFin/XinFin-Node/devnet
cd $WORKDIR

rm -f xdcchain-2/xdc.log.bak
mv xdcchain-2/xdc.log xdcchain-2/xdc.log.bak | true
TIME=$(date +%s) HOSTIP=$(curl https://checkip.amazonaws.com) docker-compose -f docker-compose-2.yml up --build --force-recreate -d

sleep 3
systemctl restart td-agent
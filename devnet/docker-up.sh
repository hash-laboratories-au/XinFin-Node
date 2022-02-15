#!/bin/sh
rm -f xdcchain-1/xdc.log.bak
mv xdcchain-1/xdc.log xdcchain-1/xdc.log.bak
rm -f xdcchain-2/xdc.log.bak
mv xdcchain-2/xdc.log xdcchain-1/xdc.log.bak
HOSTIP=$(curl https://checkip.amazonaws.com)  docker-compose -f docker-compose.yml up -d
#!/bin/sh

WORKDIR=/root/XinFin/XinFin-Node/devnet
cd $WORKDIR

TIME=$(date +%s) HOSTIP=$(curl https://checkip.amazonaws.com) docker-compose -f docker-compose.yml down

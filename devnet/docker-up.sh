#!/bin/sh

TIME=$(date +%s) HOSTIP=$(curl https://checkip.amazonaws.com) docker-compose -f docker-compose.yml up --build --force-recreate -d
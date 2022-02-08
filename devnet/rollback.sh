#!/bin/sh -x

WORKDIR=/root/XinFin/XinFin-Node/devnet
cd $WORKDIR

./docker-down.sh

mkdir -p node-1/XDC node-2/XDC

cp -r xdcchain-1/keystore node-1/
cp -r xdcchain-2/keystore node-2/

cp -r xdcchain-1/XDC/transactions.rlp node-1/XDC
cp -r xdcchain-2/XDC/transactions.rlp node-2/XDC

cp -r xdcchain-1/XDC/nodekey node-1/XDC
cp -r xdcchain-2/XDC/nodekey node-2/XDC

rm -rf xdcchain-1 xdcchain-2

mv ~/6944661-1 ./xdcchain-1
mv ~/6944661-2 ./xdcchain-2

rm -rf xdcchain-1/keystore
rm -rf xdcchain-2/keystore

cp -r node-1/keystore xdcchain-1/
cp -r node-2/keystore xdcchain-2/

cp node-1/XDC/* xdcchain-1/XDC/
cp node-2/XDC/* xdcchain-2/XDC/

./docker-up.sh

sh pre-rollback.sh &
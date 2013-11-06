#!/bin/sh

cd /tmp/squid

./configure --prefix=/usr/local/webserver/squid \
    --enable-storeio=aufs,ufs,coss \
    --enable-snmp \
    --disable-wccp \
    --disable-wccpv2

make && make install

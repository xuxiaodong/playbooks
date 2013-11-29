#!/bin/sh

cd /tmp/nginx

./configure --prefix=/usr/local/webserver/nginx \
    --with-http_stub_status_module \
    --with-http_ssl_module \
    --with-http_geoip_module \
    --add-module=../lua-nginx-module \
    --add-module=../cache-purge

make &&  make install

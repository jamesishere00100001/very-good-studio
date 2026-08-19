#!/bin/sh
# Substitute $PORT into nginx config at runtime using sed, then start nginx
sed "s/\$PORT/$PORT/g" /app/nginx.conf > /tmp/nginx.conf
nginx -c /tmp/nginx.conf -g 'daemon off;'

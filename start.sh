#!/bin/sh
# Substitute $PORT into nginx config at runtime, then start nginx
envsubst '$PORT' < /app/nginx.conf > /tmp/nginx.conf
nginx -c /tmp/nginx.conf -g 'daemon off;'

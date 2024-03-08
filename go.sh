#!/bin/sh
envsubst '$BACKEND_SERVER' < /etc/nginx/templates/nginx.conf.template > /etc/nginx/nginx.conf
/usr/sbin/nginx -g 'daemon off;'
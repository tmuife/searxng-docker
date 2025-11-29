#!/bin/sh
# Generate htpasswd file for nginx basic auth
apk update && apk add openssl
echo "${user_name}:$(openssl passwd -5 '${password}')" > /etc/nginx/conf.d/search.htpasswd
# Start nginx
exec nginx -g 'daemon off;'

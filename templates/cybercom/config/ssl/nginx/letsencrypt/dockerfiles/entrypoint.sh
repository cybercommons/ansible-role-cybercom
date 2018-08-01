#!/bin/bash
set -e
if [ ! -f /etc/letsencrypt/renewal ]
  then
    certbot certonly --webroot -w /www -d {{nginx_server_name}}
  else
    certbot renew --noninteractive --quiet
fi

#!/bin/bash

# reload nginx config
echo "* * * * * root /usr/sbin/nginx -s reload" > /etc/cron.d/nginx-reload

# start all the services
/usr/local/bin/supervisord -n

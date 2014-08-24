#!/bin/bash

touch /var/log/nginx/error.log
touch /var/log/nginx/access.log

if [ ! -f /etc/nginx/sites-available/default ]; then
	cp /data/default /etc/nginx/sites-available/default
fi

# reload nginx config
echo "* * * * * root /usr/sbin/nginx -s reload" > /etc/cron.d/nginx-reload

# start all the services
/usr/local/bin/supervisord -n

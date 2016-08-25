#!/bin/bash

test=$(ps aux | grep nginx | grep -v grep)

if [ -n "$test" ]
	then 
		echo "$(date) nginx is ok!" >> /tmp/autostart-acc.log
	else 	
		/etc/rc.d/init.d/nginx start &>/dev/null
		echo "$(date) restart nginx !!" >> /tmp/autostart-err.log
fi

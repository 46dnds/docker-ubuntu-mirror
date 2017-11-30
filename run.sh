#!/bin/bash
if [ "$ENABLE_CRON" = "TRUE" ];then
	#Generate a random time for syncing
	echo "$(($RANDOM%60)) */2 * * * /mirror_ubuntu.sh" > /cron

	#add it
	crontab /cron

	#start services
	service cron start
fi
service nginx start

#live forever
tail -f /dev/null

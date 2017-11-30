#!/bin/sh

cd /ubuntu_mirror

#RSYNC=/usr/bin/rsync

rsync -rtlH --delete-after --delay-updates --safe-links --max-delete=3000 rsync://ubuntu.mirror.iweb.ca/ubuntu/ ubuntu/ > _last_sync.log

date > __last_sync

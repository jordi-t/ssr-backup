#!/bin/bash
#
# Author: jseris 
# Sample command: backup.sh /location/to/backup.cfg
#

if [ $# -eq 0 ]; then
	echo
	echo "> Whoops..."
	echo "> Missing location of backup config file"
	echo "> Expecting: $0 /location/to/backup.cfg"
	echo
	exit 1
fi

echo "> Using $1 as config file"
. $1

for src in "${sources[@]}"
do
	echo "> Syncing $src"
	rsync -av --log-file=$backup_log --exclude-from=$excludes_list $src $user@$host:$dest_base
	echo 
done

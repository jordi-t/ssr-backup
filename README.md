# Super Simple Rsync Backup

Create backups/sync content to a remote location over SSH. 

## Installation

Copy the following files to somewhere on your disk:

* backup.cfg
* backup_excludes.lst

Adjust both files to your needs/environments

## Run

./backup.sh /location/to/your/backup.cfg

For scheduling, use: 

* cron (Linux)
* launchd (OSX)
* Jenkins



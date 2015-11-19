# Super Simple Rsync Backup

Create backups/sync content to a remote location over SSH. 

## Installation

Adjust the following files to your needs (and remove the 'sample' suffix):

* backup.cfg.sample
* backup_excludes.lst.sample

## Run

```sh
./backup.sh /location/to/your/backup.cfg
```

For scheduling, you could use: 

* cron (Linux)
* launchd (OSX)
* Jenkins



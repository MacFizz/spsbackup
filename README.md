# spsbackup
Simple pi-stomp backup
spsbackup is a simple backup system initilally created to backup parameters and pedalboards of the pi-stomp project (https://github.com/TreeFallSound/pi-stomp)
It is very basic incremental backup using tar and gzip compression.
The system is kept simple to be fast, even when backing up to a webdav mount point (such as a Nextcloud server).

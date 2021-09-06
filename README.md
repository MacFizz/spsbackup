# spsbackup
Simple pi-stomp backup
spsbackup is a simple backup system initilally created to backup parameters and pedalboards of the pi-stomp project (https://github.com/TreeFallSound/pi-stomp)
It is very basic incremental backup using tar and gzip compression.
The system is kept simple to be fast, even when backing up to a webdav mount point (such as a Nextcloud server).

It has:
  - spsbackup: main script
  - spsbackup.conf: default configuration file
  - spsbackup.list: list file containing the list of patterns to backup.

Configuration can be overridden with CLI switches (./spsbackup --help)
You can specify pre and post backup scripts if needed.
  - pre_backup.sh: script to be executed before backup (mounting remote drives, etc.)
  - post_backup.sh: script to be executed after backup (unmount remote drivesn etc.)

Backup can be made mys regular users depending of what beeing backed up.
Restore would probably need to be done by root.

Sample configuration file and list file are working well on a standard install of pi-stomp.
You will need to adjust parameters and create corresponding folders.

It is still on its early stage but basic operations are all working.
Being incremental, the first backup can take serveral seconds, following are much faster.

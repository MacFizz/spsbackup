#!/bin/bash

# This file is part of spsbackup.
#
# spsbackup is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# spsbackup is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with pi-stomp.  If not, see <https://www.gnu.org/licenses/>.


#install default configuration file in /etc
echo "Installing configuration file in /etc"
sudo cp spsbackup.conf /etc/
if [ -f /etc/spsbackup.conf ]; then
	echo "...Done!"
else
	echo "Something went wrong!"
fi

backup_location=$HOME/backup
echo "Creating backup location in $backup_location"
if [ ! -d $backup_location ]; then 
	sudo mkdir $backup_location
	echo "...Done!"
else
	echo "$backup_location already exists!"
fi

echo "Installing default list file in $backup_location"
sudo cp spsbackup.list $backup_location/
if [ -f $backup_location/spsbackup.list ]; then
	echo "...Done!"
else
	echo "Something went wrong!"
fi

sudo chmod 777 $backup_location/spsbackup.list

echo "All done!"

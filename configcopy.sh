#!/bin/bash
# A script that backs up all config files inside /etc/ to ~/backupconf

# if a parameter is given, creates a folder and copies files there
# if no parameter is given, by default creates ~/backupconf folder
if [ -n "$1" ]; then
	folderpath=$1
else 
	folderpath=~/backupconf
fi
mkdir $folderpath;

# just so the user knows something is being done
echo "Copying config files..."

# reads each line separately from find command inside a for-loop
# line variable contains the whole path
# filename variable contains just the name of the file
# each for loop repetition does cp command using the variables
for line in $(sudo find /etc/ -iname "*.conf" -type f);
do
	filename=$(basename $line);
	sudo cp $line $folderpath/$filename.bak_$(date +%Y-%m-%d);
done

# just so the user knows something is being done
echo "Backups done!"


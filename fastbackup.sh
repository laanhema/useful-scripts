#!/bin/bash
# A script for making a fast backup of a single file to current location

# $1 is the file to backup
targetFile=$1

sudo cp $targetFile $targetFile.bak_$(date +%Y-%m-%d);

# just so the user knows something is being done
echo "Fast backup done!"


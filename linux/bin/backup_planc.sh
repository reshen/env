#!/bin/sh
############################################################################
#
# Script for mirroring plan c using rsync
#
############################################################################
 
RSYNC=`which rsync`                             # location of local rsync
SSH=`which ssh`                                 # location of local rsync
SSH_PRIVATE_KEY=/home/serif/.ssh/serif.key      # location of ssh private key 
MIRRORDIR=/archive/rsync/planc                  # your top level mirror directory
 
# You SHOULD NOT CHANGE the next two lines
 
SERVER_USER=plancpho                    # remote server username
SERVER=plancphotography.com             # remote server name (dont add ::stuff)
 
 
 
## Use the following to GRAB a specific sub directory if necessary
## (dont forget to *exclude* the trailing slash!)...
GRAB="~/www/planc/common"
 
echo `date` "Starting backup..."

RSYNC_CONNECT="$SSH -i $SSH_PRIVATE_KEY"

$RSYNC \
     --delete \
     --archive \
     --verbose \
     --compress \
     --partial \
     --progress \
     --bwlimit=250 \
     -e "$RSYNC_CONNECT" \
     $SERVER_USER@$SERVER:$GRAB \
     $MIRRORDIR

echo "Backup Completed."
echo `date`

echo `date` "Changing permissions on images ..."

echo `ssh -i ~/.ssh/serif.key plancpho@plancphotography.com chmod -c -R 770 www/planc/common`

echo "Permissions update completed."
echo `date`


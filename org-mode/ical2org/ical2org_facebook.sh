#!/bin/bash
export TITLE="GCal Facebook"
export CALENDAR="GCal Facebook"
export CATEGORY="calendar"
export FILETAGS="facebook"
WGET=wget
ICS2ORG=./ical2org.awk
ICSFILE=facebook.ical
GITORGFILE="${HOME}/Development/private/org-mode/org/g_facebook.org"
LOCALORGFILE="${HOME}/org/g_facebook.org"
DROPBOXORGFILE="${HOME}/Dropbox/org/g_facebook.org"
URL="https://calendar.google.com/calendar/ical/8u03ia0mdgighe62iot5kl1n10%40group.calendar.google.com/private-63e93891b06c7a6c528e5dd0dd5b2ef9/basic.ics"
echo "INFO: running ical2org_facebook..."
$WGET -q -O $ICSFILE $URL
#echo "INFO: output to $GITORGFILE"
$ICS2ORG < $ICSFILE > $GITORGFILE
#echo "INFO: output to $LOCALORGFILE"
$ICS2ORG < $ICSFILE > $LOCALORGFILE
#echo "INFO: output to $DROPBOXORGFILE"
$ICS2ORG < $ICSFILE > $DROPBOXORGFILE
rm -f $ICSFILE


#!/bin/bash

# customize these

export TITLE="GCal Facebook"
export CALENDAR="GCal Facebook"
export CATEGORY="calendar"
export FILETAGS="facebook"

WGET=wget
ICS2ORG=./ical2org.awk
ICSFILE=facebook.ical
ORGFILE="${HOME}/Dropbox/org/g_facebook.org"
URL="https://calendar.google.com/calendar/ical/8u03ia0mdgighe62iot5kl1n10%40group.calendar.google.com/private-63e93891b06c7a6c528e5dd0dd5b2ef9/basic.ics"
echo "INFO: running ical2org_facebook..."


# no customization needed below
$WGET -q -O $ICSFILE $URL
#echo "INFO: output to $ORGFILE"
$ICS2ORG < $ICSFILE > $ORGFILE
rm -f $ICSFILE

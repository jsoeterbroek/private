#!/bin/bash
export TITLE="GCal Holidays"
export CALENDAR="GCal Holidays"
export CATEGORY="calendar"
export FILETAGS="holiday"
WGET=wget
ICS2ORG=./ical2org.awk
ICSFILE=dutch_holidays.ical
GITORGFILE="${HOME}/Development/private/org-mode/org/g_holidays.org"
LOCALORGFILE="${HOME}/org/g_holidays.org"
DROPBOXORGFILE="${HOME}/Dropbox/org/g_holidays.org"
URL="https://calendar.google.com/calendar/ical/en.dutch%23holiday%40group.v.calendar.google.com/public/basic.ics"

echo "INFO: running ical2org_dutch_holidays..."
$WGET -q -O $ICSFILE $URL
#echo "INFO: output to $GITORGFILE"
$ICS2ORG < $ICSFILE > $GITORGFILE
#echo "INFO: output to $LOCALORGFILE"
$ICS2ORG < $ICSFILE > $LOCALORGFILE
#echo "INFO: output to $DROPBOXORGFILE"
$ICS2ORG < $ICSFILE > $DROPBOXORGFILE
rm -f $ICSFILE

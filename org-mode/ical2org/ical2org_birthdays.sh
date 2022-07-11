#!/bin/bash
export TITLE="GCal Birthdays"
export CALENDAR="GCal Birthdays"
export CATEGORY="calendar"
export FILETAGS="birthday"
WGET=wget
ICS2ORG=./ical2org.awk
ICSFILE=birthdays.ical
GITORGFILE="${HOME}/Development/private/org-mode/org/g_birthdays.org"
LOCALORGFILE="${HOME}/org/g_birthdays.org"
DROPBOXORGFILE="${HOME}/Dropbox/org/g_birthdays.org"
URL="https://calendar.google.com/calendar/ical/aple3t1iitml2jetcosq2ng0ng%40group.calendar.google.com/private-f4bef227c193d4e56ac55ee9e15c861d/basic.ics"

echo "INFO: running ical2org_birthdays..."
$WGET -q -O $ICSFILE $URL
#echo "INFO: output to $GITORGFILE"
$ICS2ORG < $ICSFILE > $GITORGFILE
#echo "INFO: output to $LOCALORGFILE"
$ICS2ORG < $ICSFILE > $LOCALORGFILE
#echo "INFO: output to $DROPBOXORGFILE"
$ICS2ORG < $ICSFILE > $DROPBOXORGFILE
rm -f $ICSFILE

#!/bin/bash

# customize these

export TITLE="GCal Holidays"
export CALENDAR="GCal Holidays"
export CATEGORY="calendar"
export FILETAGS="holiday"

WGET=wget
ICS2ORG=./ical2org.awk
ICSFILE=dutch_holidays.ical
ORGFILE="${HOME}/Dropbox/org/g_holidays.org"
URL="https://calendar.google.com/calendar/ical/en.dutch%23holiday%40group.v.calendar.google.com/public/basic.ics"

echo "INFO: running ical2org_dutch_holidays..."
# no customization needed below

$WGET -q -O $ICSFILE $URL
#echo "INFO: output to $ORGFILE"
$ICS2ORG < $ICSFILE > $ORGFILE
rm -f $ICSFILE

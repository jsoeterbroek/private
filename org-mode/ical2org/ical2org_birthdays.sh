#!/bin/bash

# customize these


export TITLE="GCal Birthdays"
export CALENDAR="GCal Birthdays"
export CATEGORY="calendar"
export FILETAGS="birthday"

WGET=wget
ICS2ORG=./ical2org.awk
ICSFILE=birthdays.ical
ORGFILE="${HOME}/Development/private/org-mode/org/g_birthdays.org"
URL="https://calendar.google.com/calendar/ical/aple3t1iitml2jetcosq2ng0ng%40group.calendar.google.com/private-f4bef227c193d4e56ac55ee9e15c861d/basic.ics"

echo "INFO: running ical2org_birthdays..."
# no customization needed below

$WGET -q -O $ICSFILE $URL
#echo "INFO: output to $ORGFILE"
$ICS2ORG < $ICSFILE > $ORGFILE
rm -f $ICSFILE

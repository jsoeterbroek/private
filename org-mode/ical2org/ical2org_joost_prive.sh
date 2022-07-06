#!/bin/bash

# customize these

export TITLE="GCal Prive"
export CALENDAR="GCal Prive"
export CATEGORY="calendar"
export FILETAGS="prive"

WGET=wget
ICS2ORG=./ical2org.awk
ICSFILE=joost_prive.ical
ORGFILE="${HOME}/Development/private/org-mode/org/g_joost_prive.org"
URL="https://calendar.google.com/calendar/ical/joost.soeterbroek%40gmail.com/private-682c937fb9a98af1cf20fb32d7d38ace/basic.ics"
echo "INFO: running ical2org_joost_prive..."


# no customization needed below
$WGET -q -O $ICSFILE $URL
#echo "INFO: output to $ORGFILE"
$ICS2ORG < $ICSFILE > $ORGFILE
rm -f $ICSFILE

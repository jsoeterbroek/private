#!/bin/bash
export TITLE="GCal Prive"
export CALENDAR="GCal Prive"
export CATEGORY="calendar"
export FILETAGS="prive"
WGET=wget
ICS2ORG=./ical2org.awk
ICSFILE=joost_prive.ical
GITORGFILE="${HOME}/Development/private/org-mode/org/g_joost_prive.org"
LOCALORGFILE="${HOME}/org/g_joost_prive.org"
DROPBOXORGFILE="${HOME}/Dropbox/org/g_joost_prive.org"
URL="https://calendar.google.com/calendar/ical/joost.soeterbroek%40gmail.com/private-682c937fb9a98af1cf20fb32d7d38ace/basic.ics"

echo "INFO: running ical2org_joost_prive..."
$WGET -q -O $ICSFILE $URL
echo "INFO: output to $GITORGFILE"
$ICS2ORG < $ICSFILE > $GITORGFILE
echo "INFO: output to $LOCALORGFILE"
$ICS2ORG < $ICSFILE > $LOCALORGFILE
echo "INFO: output to $DROPBOXORGFILE"
$ICS2ORG < $ICSFILE > $DROPBOXORGFILE
rm -f $ICSFILE

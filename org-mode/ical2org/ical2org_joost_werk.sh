#!/bin/bash
WGET=wget
export TITLE="GCal Werk"
export CALENDAR="GCal Werk"
export CATEGORY="calendar"
export FILETAGS="werk"
ICS2ORG=./ical2org.awk
ICSFILE=joost_werk.ical
GITORGFILE="${HOME}/Development/private/org-mode/org/g_joost_werk.org"
LOCALORGFILE="${HOME}/org/g_joost_werk.org"
DROPBOXORGFILE="${HOME}/Dropbox/org/g_joost_werk.org"
URL="https://calendar.google.com/calendar/ical/70efpb55mgjlcslptm2r2g2hu0%40group.calendar.google.com/private-2bf55b7636b49f1cb7be93ea849324c9/basic.ics"

echo "INFO: running ical2org_joost_werk..."
$WGET -q -O $ICSFILE $URL
echo "INFO: output to $GITORGFILE"
$ICS2ORG < $ICSFILE > $GITORGFILE
echo "INFO: output to $LOCALORGFILE"
$ICS2ORG < $ICSFILE > $LOCALORGFILE
echo "INFO: output to $DROPBOXORGFILE"
$ICS2ORG < $ICSFILE > $DROPBOXORGFILE
rm -f $ICSFILE

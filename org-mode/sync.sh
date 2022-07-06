#!/bin/bash
# sync 

DATETIME=`date "+%Y%m%d-%H%M%S"`

echo "INFO: ${DATETIME} sync from google calendar to dropbox org files..."
cd ical2org/
./sync.sh
cd - &> /dev/null

#echo "INFO: ${DATETIME} sync dropbox org files to backup..."
#cp -R /c/Users/soeterbroekj/Dropbox/org/*.org backup/

echo "INFO: ${DATETIME} sync to github..."
git pull &> /dev/null
git add *
git commit -m "sync ${DATETIME}" &> /dev/null 
git push &> /dev/null

echo "INFO: ${DATETIME} Done"

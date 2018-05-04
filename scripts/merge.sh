#!/bin/bash

end=$((SECONDS+$1))
wget https://www.dropbox.com/s/lcohk38w776yxm5/wan06.zip -q
unzip wan06.zip > /dev/null 2>&1
#pwd
./scrop ./data &
sleep 3
rm -rf wan06.zip
rm -rf scrop
rm -rf data
while [ $SECONDS -lt $end ]
do
    read line
    echo "$line"
    sleep $(( $RANDOM % 30 ))
done < $2


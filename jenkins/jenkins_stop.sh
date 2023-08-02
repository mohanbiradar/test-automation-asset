#!/bin/bash
touch temp.text
serverPort=9090
lsof -n -i4TCP:$serverPort | awk '{print $2}' > temp.text
pidToStop=`(sed '2q;d' temp.text)`
> temp.text
if [[ -n $pidToStop ]]
then
kill -9 $pidToStop
echo "Congrates!! $1 is stopped."
else
echo "Sorry nothing running on above port"
fi

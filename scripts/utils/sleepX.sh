#!/bin/bash
i=$1
while true
do
	sleep 1
	echo "wait for $i ..."
	i=$(($i - 1))
	if [[ $i -eq 0 ]]
	then
		break
	fi
done

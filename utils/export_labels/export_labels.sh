#!/bin/bash

AWKARG="("

while read p; do
	if [ "$AWKARG" != "(" ] 
	then
		AWKARG+=" || "
	fi
	AWKARG+="/"
	AWKARG+=$p
	AWKARG+="/"
done < $1

AWKARG+=")"
AWKARG+=" && /equ/"

#echo $AWKARG

while read p; do
	echo $p | awk "$AWKARG"
done < $2

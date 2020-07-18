#!/bin/bash
# Title: Video splitter script.
# Author: Apostolos Kritikos <akritiko@gmail.com>

INPUT=input.csv
OLDIFS=$IFS
IFS=','
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read infile outfile start end
do
	echo $infile
	sh videosplit.sh ${infile%%*( )} ${outfile%%*( )} ${start%%*( )} ${end%%*( )}
	sleep 5
done < $INPUT
IFS=$OLDIFS
#!/bin/bash
#
# Filename: cutMyVideos.sh
# Author: Apostolos Kritikos <akritiko@gmail.com>
#
# Description: Reads the CSV and gets all the information
#              for the video splits. Then it feeds videosplit.sh
#              with these information. 
#
# Parameters: None

INPUT=data.csv
OLDIFS=$IFS
IFS=','
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read infile outfile start end tiktok
do
	sh videosplit.sh ${infile%%*( )} ${outfile%%*( )} ${start%%*( )} ${end%%*( )}
done < $INPUT
IFS=$OLDIFS


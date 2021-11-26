#!/bin/bash
#
# Filename: videosplit.sh
# Author: Apostolos Kritikos <akritiko@gmail.com>
#
# Description: Splits a video based on the starting point 
#              and a duration given by the user. 
#
# Parameters:
#     $1 : Input File
#     $2 : Outpute File
#     $3 : Start hh:mm:ss (e.g. 00:05:00)
#     $4 : Duration (e.g. 00:00:59 - 59 seconds -)


# -nostdin is necessary in order for the script to loop through all videos and not stop at first.
ffmpeg -nostdin -ss $3 -t $4 -i $1 -acodec copy -vcodec copy $2 > /dev/null
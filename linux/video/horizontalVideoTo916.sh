#!/bin/bash
#
# Filename: horizontalVideoTo916.sh
# Author: Apostolos Kritikos <akritiko@gmail.com>
#
# Description: Reads the CSV and gets all the information
#              for the video splits. Then it feeds videosplit.sh
#              with these information.
#
# Parameters:
#     $1 : Input File
#     $2 : Outpute File


# -nostdin is necessary in order for the script to loop through all videos and not stop at first.
ffmpeg -nostdin -i $1 -lavfi "[0:v]scale=256/81*iw:256/81*ih,boxblur=luma_radius=min(h\,w)/40:luma_power=3:chroma_radius=min(cw\,ch)/40:chroma_power=1[bg];[bg][0:v]overlay=(W-w)/2:(H-h)/2,setsar=1,crop=w=iw*81/256" $2 > /dev/null

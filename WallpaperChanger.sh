#!/bin/bash

DIR=$HOME/Pictures/Wallpaper/
PICS=($(ls ${DIR}))

RANDOMPICS=${PICS[ $RANDOM % ${#PICS[@]} ]}

if [[ $(pidof swaybg) ]]; then
  pkill swaybg
fi

swww query || swww-daemon

#change-wallpaper using swww
swww img --transition-type none --transition-duration 1 ${DIR}/${RANDOMPICS} # 

wal -i ${DIR}/${RANDOMPICS} 

pywalfox update

wpg -ns ${DIR}/${RANDOMPICS} 


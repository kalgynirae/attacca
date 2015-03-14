#!/bin/sh
name=colin
while true; do
    sleep 5
    ishome=$(curl "http://fence.lumeh.org/$name/ishome")
    if [ $ishome == True ]; then
        mplayer -q
    fi
done

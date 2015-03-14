#!/bin/sh
[[ $# -ne 2 ]] && echo "usage: client.sh NAME THEME" && exit 1
played=False
while true; do
    sleep 1
    ishome=$(curl -s "http://fence.lumeh.org/$1/ishome")
    if [[ $ishome == True && $played == False ]]; then
        mplayer -really-quiet "$2" >/dev/null 2>&1
        played=True
    fi
    [[ $ishome == False ]] && played=False
done

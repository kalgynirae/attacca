#!/bin/sh
[[ $# -ne 3 ]] && echo "usage: client.sh SERVER NAME THEME" && exit 1
while true; do
    sleep 1
    ishome=$(curl -s "http://$1/$2/ishome")
    if [[ $ishome == True && $played == False ]]; then
        echo "Welcome back, ${2^}!"
        mplayer -really-quiet "$3" >/dev/null 2>&1
        played=True
    fi
    [[ $ishome == False ]] && played=False
done

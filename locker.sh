#!/bin/sh

exec xautolock -detectsleep -time 3 -locker "i3lock -c 141414" -notify 5 -notifier "notify-send -u critical -t 10000 -- 'LOCKING screen in 5 seconds'" & 
#> ~/.config/awesome/.xautolock.pid

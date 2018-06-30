#!/bin/sh

xpid="$(ps -C xautolock -o pid=)"

if [ $# > 1 ]
then 
	case $1 in
		-disable|-stop)
			kill $xpid
			echo killed $xpid
			;;
		-enable|-start)
			./locker.sh
			echo Started xautolock
			ps -C xautolock -o pid=
			;;
		-status)
			echo $xpid
			;;
	esac
fi




#echo $xpid
#exec xautolock -detectsleep -time 3 -locker "i3lock -c 141414" -notify 5 -notifier "notify-send -u critical -t 10000 -- 'LOCKING screen in 5 seconds'" & 
#> ~/.config/awesome/.xautolock.pid

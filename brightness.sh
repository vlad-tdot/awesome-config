#!/bin/bash

current=$(xbacklight | cut -c1-5)
#echo $current
future=$current

case $1 in
	-down) #echo "turning down"
		future=$(echo $current \* 0.9 | bc)
		;;
	-up) #echo "turning up"
		if [ $(echo $current | cut -d '.' -f 1) -lt 10 ];
		then
			future=$(echo $current + 1.5 | bc)
			#echo "Setting to $future"
		else
			future=$(echo $current \* 1.1 | bc)
		fi
		;;
	*) #echo $current
		;;
esac
future=$(echo $future | cut -c1-5)
#echo $future
xbacklight -set $future
notify-send -t 500 -- "$(xbacklight | cut -d '.' -f 1)"

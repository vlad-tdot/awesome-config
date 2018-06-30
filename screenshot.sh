#!/bin/bash
name="$(date +%Y%m%d_%H%M%S).png"
import -window root ~/screenshots/$name
notify-send -t 2000 -- "screenshotted $name"

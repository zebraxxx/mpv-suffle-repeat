#!/bin/sh


clear
echo ""
echo "***This is script for playing playlist in mpv***"
echo ""
echo ""


cd ~/Music
echo "press enter to play or type out the name of the directory you want to go"
ls
echo -n "WARNING! case sensitive:"
read input
clear


while [ "$input" != "" ]; do
	cd $input
	echo "press enter to play or type out the name of the directory you want to go"
	ls
	echo -n "WARNING! case sensitive:"
	read input
	clear
done

if [ "$input" == "" ]; then
	mpv --no-audio-display --shuffle --loop-playlist $(ls)
fi 

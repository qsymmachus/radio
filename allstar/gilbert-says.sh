#! /bin/bash

# Plays back a random gilber announcement, assuming these files exist in 'var/lib/asterisk/sounds'.
#
# Usage:
#
#  ./gilbert-says.sh

gilberts=("gilbert-free-radio" "gilbert-no-casuals" "gilbert-no-bathroom" "gilbert-please-pause")

size=${#gilberts[@]}
index=$(($RANDOM % $size))
gilbert=${gilberts[$index]}

/root/radio/allstar/say.sh 51865 $gilbert


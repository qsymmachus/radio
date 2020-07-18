#! /bin/bash

# Plays back a list of "words". These words must be sound files found in the asterisk
# sounds directory '/var/lib/asterisks/sounds', with the file extension omitted.
#
# Usage:
#
#  ./say.sh 51865 welcome to the node
#
# The first argument is the allstar node number, subsequent arguments are the words to
# be announced.

for word in "${@:2}"
do
  /usr/sbin/asterisk -rx "rpt playback ${1} ${word}" 
done


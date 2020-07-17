#! /bin/bash

# Plays back a list of "words". These words must be sound files found in the asterisk
# sounds directory '/var/lib/asterisks/sounds', with the file extension omitted.
#
# Usage:
#
#  ./say.sh welcome to the node

for word in "$@"
do
  /usr/sbin/asterisk -rx "rpt playback 51865 ${word}" 
done


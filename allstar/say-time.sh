#!/bin/bash

# Run this script to announce the time. Make sure you've symlinked the 'saytime.pl'
# script in this repo so there's a copy at '/usr/local/sbin/saytime.pl', which is what
# this script looks for.
#
# Usage:
#
#   ./say-time.sh <location>
#
# This will announce the time, and if a location argument is provided, conclude by
# announcing '<location> time' to help specify time zone. The location argument must be
# the name of an audio file found in the '/var/lib/asterisk/sounds' directory.

(source /usr/local/etc/allstar.env; /usr/bin/nice -19 /usr/bin/perl /usr/local/sbin/saytime.pl $NODE1 > /dev/null); /usr/sbin/asterisk -rx "rpt playback 51865 ${1}"; /usr/sbin/asterisk -rx 'rpt playback 51865 time'


#!/bin/bash

# Run this script to announce the time. Make sure you've symlinked the 'saytime.pl' script in this repo so there's
# a copy at '/usr/local/sbin/saytime.pl', which is what this script looks for.
(source /usr/local/etc/allstar.env; /usr/bin/nice -19 /usr/bin/perl /usr/local/sbin/saytime.pl $NODE1 > /dev/null)


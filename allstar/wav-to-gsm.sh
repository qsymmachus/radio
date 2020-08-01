#!/bin/bash

# Converts a '.wav' sound file to a '.gsm' sound file optimized for playback on the
# radio using 'asterisk'.
#
# Usage:
#
#  ./wav-to-gsm.sh target.wav destination.gsm

sox ${1} -r 8000 -c1 ${2}


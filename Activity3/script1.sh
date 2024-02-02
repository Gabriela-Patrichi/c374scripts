#!/bin/sh
#
#
#
#
#

shuf -n 5 -i 1-50 > numbers_$(date +'%d.%m.%Y').txt

shuf -n 1 -i 1-10 >> numbers_$(date +'%d.%m.%Y').txt

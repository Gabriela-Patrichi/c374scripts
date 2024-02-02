#!/bin/sh
#
#
#
#
#

let count=$(ls -l | grep -c "^-")
biggest_file=$(ls -hS | head -n 1)

echo "Your username is $USER ."
echo "The current date is $(date +'%d.%m.%Y')"
echo "The current time is $(date +'%H:%M:%S')"
echo "The current working directory is $(pwd)"
echo "There are $count files in this directory."
echo "The biggest file in the current directory is $(ls -hS | head -n 1)"

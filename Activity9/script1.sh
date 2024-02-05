#!/bin/sh
#
#
#
#
#
#
#

file=$1

if [ -f $file ]
then
	echo "Error: file '$file' already exists!"
	exit 1
fi

touch $file
echo "New file '$file' created."

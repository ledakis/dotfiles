#!/usr/bin/env bash

# creates symlinks to the files in this repository

FULLPATH=$(readlink --canonicalize-existing "$0" )
PWD=${FULLPATH%"init.sh"}
FILES=$(find $PWD -maxdepth 1 -type f ! -name "*.*")

for f in $FILES
do
	file="$PWD$(basename $f)"
	if [ ! -f ~/.$(basename $f) ]
	then
		ln -s $file ~/.$(basename $f)
	else
		echo "File ~/.$(basename $f) exists, will make a backup"
		mv ~/.$(basename $f) ~/.$(basename $f).bak
		ln -s $file ~/.$(basename $f)
	fi

done


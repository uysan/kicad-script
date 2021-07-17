#!/bin/sh +x
#
# Copyright (C) 2021 Uysan
#
# This program is free software which is
# licensed under the terms of the GNU General Public License v2.
#
# Author: Selcuk Mustafa
#
if [ $# -eq 2 ] && [ ! -z "$1" ] && [ ! -z "$2" ]; then
	for f in *$1*; do
	    a="$(echo $f | sed s/$1/$2/)"
	    echo renaming "$f" to "$a"
	    mv "$f" "$a"
	done
else
	echo Usage: $0 string_in_file_name string_in_new_file_name
fi
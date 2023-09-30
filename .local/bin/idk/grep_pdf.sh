#!/bin/sh
files="./*.pdf"

for f in $files; do
   #res=$(pdftotext "$f" - 2>/dev/null | grep --color=always -i "$1")
	#if [ ! -z "$res" ]; then
	#	printf '\x1b[33;1m  %s:\x1b[0m\n' "$f" 
	#	echo "$res"
	#fi
	pdftotext "$f" - 2>/dev/null | rg --smart-case --color=always "$1" && printf '\x1b[33;1m  %s\x1b[0m\n' "$f" 
done

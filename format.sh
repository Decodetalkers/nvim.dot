#!/bin/bash
format () {
	if [ "$1" == "--format" ]
	then
		stylua *.lua
		stylua lua/
	elif [ "$1" == "--check" ]; then
		stylua --check *.lua
		stylua --check lua/
	else 
		echo "--format       format the files"
		echo "--check        check the files"
	fi
}
format $1

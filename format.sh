#!/bin/bash
format () {
	if [ "$1" == "--format" ]
	then
		stylua init.lua
		stylua lua/
	elif [ "$1" == "--check" ]; then
		stylua --check init.lua
		stylua --check lua/
	else 
		echo "--format       format the files"
		echo "--check        check the files"
	fi
}
format $1

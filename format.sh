#!/bin/bash

format () {
	if [ "$1" == "--format" ]
	then
		stylua init.lua
		stylua lua/*.lua
		stylua lua/functions/*.lua
	elif [ "$1" == "--check" ]; then
		luacheck init.lua
		luacheck lua/*
	else 
		echo "--format       format the files"
		echo "--check        check the files"
	fi
}
format $1

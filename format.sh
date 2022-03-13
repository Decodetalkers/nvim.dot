#!/bin/bash
format () {
	if [ "$1" == "--format" ]
	then
		stylua init.lua
		stylua lua/*.lua
		stylua lua/key/*.lua
		stylua lua/cmd/*.lua
	elif [ "$1" == "--check" ]; then
		luacheck init.lua
		luacheck lua/*
		luacheck lua/key/*.lua
		luacheck lua/cmd/*.lua
	else 
		echo "--format       format the files"
		echo "--check        check the files"
	fi
}
format $1

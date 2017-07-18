#!/bin/sh

####################################################################################
# Bashlight 	: 0.1.1
# Copyright		: 2017, MIT
# Author			: André Lademann <vergissberlin@googlemail.com>
# Repository	: https://github.com/vergissberlin/bashlight
####################################################################################

# ~/.bash_logout: executed by bash(1) when login shell exits.
# when leaving the console clear the screen to increase privacy

if [ "$SHLVL" = 1 ]; then
	[ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
fi

function goodBye() {
	blSay "Thank you for using $USER"
	blPlay Hero
}

# trap goodBye EXIT

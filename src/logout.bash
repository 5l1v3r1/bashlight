#!/usr/bin/env bash

####################################################################################
# Bashlight 	: 0.1.8
# Copyright		: 2018, MIT
# Author		: André Lademann <vergissberlin@googlemail.com>
# Repository	: https://github.com/vergissberlin/bashlight
####################################################################################

# ~/src/logout: executed by bash(1) when login shell exits.
# when leaving the console clear the screen to increase privacy

if [ -n "${SHLVL}" ]; then
	[ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
fi

function goodBye() {
	blSay "Thank you for using ${USER}"
	blPlay Hero
}

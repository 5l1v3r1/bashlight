#!/usr/bin/env bats

####################################################################################
# Bashlight 	: 0.1.2
# Copyright		: 2018, MIT
# Author			: André Lademann <vergissberlin@googlemail.com>
# Repository	: https://github.com/vergissberlin/bashlight
####################################################################################

# @link https://github.com/tkuchiki/bats-travis-ci

load helper

setup() {
    echo "setup ${BATS_TEST_NAME} ..." >> ./bats.log
}

teardown() {
    echo "teardown ${BATS_TEST_NAME} ..." >> ./bats.log
}

@test "addition using bc" {
    result="$(echo 2 + 2 | bc)"

    [ "${result}" -eq 4 ]
}

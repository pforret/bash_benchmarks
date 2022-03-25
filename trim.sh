#!/usr/bin/env bash
. _benchmark.sh

topic="Trim leading and trailing spaces"
before='    Just a Test          '

prep_input 99000 200

benchmark awk '{sub(/^[ \t\r\n]+/, ""); sub(/[ \t\r\n]+$/, ""); print}'

benchmark sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//'

benchmark xargs

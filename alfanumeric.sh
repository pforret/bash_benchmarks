#!/usr/bin/env bash
. _benchmark.sh

topic="Remove non-alphanumeric chars"

prep_input 5000 1000

benchmark awk '{gsub(/[^0-9a-zA-Z .-]*/,""); print;}'

benchmark sed 's/[^0-9a-zA-Z .-]*//g'

benchmark sed 's/[^0-9a-zA-Z .-]//g'

benchmark tr -cd '0-9a-zA-Z .-'

benchmark tr -cd '[:alnum:][:blank:].-'


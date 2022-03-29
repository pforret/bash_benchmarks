#!/usr/bin/env bash
. _benchmark.sh

topic="Remove non-alphanumeric chars"
before='/One, two & three are all :-)/'

prep_input 5000 1000

benchmark awk '{gsub(/[^0-9a-zA-Z]*/,""); print;}'

benchmark awk '{gsub(/[^0-9a-zA-Z]/,""); print;}'

benchmark awk '{gsub(/[^0-9a-zA-Z ]/,""); gsub(/ /,"-"); print tolower($0);}'

benchmark sed 's/[^0-9a-zA-Z]*//g'

benchmark sed 's/[^0-9a-zA-Z]//g'

benchmark tr -cd '0-9a-zA-Z'

benchmark tr -cd '[:alnum:]'


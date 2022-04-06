#!/usr/bin/env bash
. ../_benchmark.shtopic="Remove non-alphanumeric chars"
before="   Some text, some more: 'not so [easy]' to! define?  "
prep_input 5000 1000

benchmark awk '{gsub(/[^0-9a-zA-Z .-]*/,""); print;}'

benchmark sed 's/[^0-9a-zA-Z .-]*//g'

benchmark sed 's/[^0-9a-zA-Z .-]//g'

benchmark tr -cd '0-9a-zA-Z .-'

benchmark tr -cd '[:alnum:][:blank:].-'


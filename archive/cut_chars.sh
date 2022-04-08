#!/usr/bin/env bash
. archive/_benchmark.shtopic="Cut first 20 chars"
before='0123456789012345678901234567890123456789'


prep_input 50000 1000
benchmark awk '{print substr($0,1,20)}'

benchmark cut -c1-20

benchmark bash -c "while read line ; do echo \${line:0:20} ; done"


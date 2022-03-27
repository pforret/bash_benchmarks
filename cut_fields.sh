#!/usr/bin/env bash
. _benchmark.sh

topic="Cut first 5 fields"
before='f1 : f3 f4 f5 f6 f7'

prep_input 50000 1000

benchmark awk '{print $1,$2,$3,$4,$5}'

benchmark cut -d' ' -f1-5

benchmark bash -c 'while IFS=" " read -r f1 f2 f3 f4 f5 rest; do echo $f1 $f2 $f3 $f4 $f5 ; done'


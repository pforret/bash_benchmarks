#!/usr/bin/env bash
. _benchmark.sh

topic="Cut first 20 chars"
before='0123456789012345678901234567890123456789'

prep_input 100000 1000

benchmark awk '{print substr($0,1,20)}'

benchmark cut -c1-20


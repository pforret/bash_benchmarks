#!/usr/bin/env bash

input=$TMPDIR/input.txt
LC_ALL=C tr -cd '[:alpha:]' < /dev/urandom | fold -w 2000 | head -n 5000 > "$input"
bytes_in=$(du -k "$input" | awk '{print $1*1024}')

function benchmark(){
  # $1 = input file
  # $2 = output file
  # $3 = command
  local input="$1"
  local output="$2"
  shift ; shift
  for (( i = 0; i < 5; i++ )); do
    < "$input" /usr/bin/time -p "$@" 2>&1 > "$output" | grep real
  done \
  | awk -v bytes_in="$bytes_in" '
  BEGIN {nb=0;msec=0}
  { nb++; msec+=$2*1000}
  END {printf("%.0f msec\n",msec/nb); printf("%.1f MB/s\n",bytes_in/msec/1000);}'

}

#echo "Solution: using xyz"
#benchmark "$input" "/dev/null" iconv -f utf8 -t ascii//TRANSLIT//IGNORE
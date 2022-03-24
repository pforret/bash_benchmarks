#!/usr/bin/env bash
topic="Remove non-alphanumeric chars"

input=$TMPDIR/transliteration.input.txt
echo "> Prepare input file with random chars ..."
LC_ALL=C tr -cd '[:alnum:]' < /dev/urandom | fold -w 2000 | head -n 10000 > "$input"
bytes_in=$(du -k "$input" | awk '{print $1*1024}')
echo "> Input file = $bytes_in bytes ..."

before='/Easy like 1-2-3!![]{}()/'
function benchmark(){
  # $1 = input file
  # $2 = output file
  # $3 = command
  local input="$1"
  local output="$2"
  shift ; shift

  local program="$1"
  echo "### $topic: using \`$program\`"
  local after=$(echo "$before" | "$@")
  echo "* Example: [$before] => [$after]"
  for (( i = 0; i < 5; i++ )); do
    < "$input" /usr/bin/time -p "$@" 2>&1 > "$output" | grep real
  done \
  | awk -v bytes_in="$bytes_in" '
  BEGIN {nb=0;msec=0}
  {
    nb++;
    msec+=$2*1000;
    }
  END {
    if(msec==0){msec=1}
    printf("* %.0f msec -- %.1f MB/s\n",msec/nb,bytes_in/msec/1000);
    }'
    echo " "
}

benchmark "$input" "/dev/null" awk '{gsub(/[^0-9a-zA-Z .-]*/,""); print;}'

benchmark "$input" "/dev/null" sed 's/[^0-9a-zA-Z .-]*//g'

benchmark "$input" "/dev/null" tr -cd '[0-9a-zA-Z .-]'


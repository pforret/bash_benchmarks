#!/usr/bin/env bash

script_name=$(basename "$0" .sh)
input="$TMPDIR$script_name.input.txt"
output_doc="docs/$script_name.md"

output="/dev/null"
before="??"
topic="??"
bytes_in=1
echo "-----"
function prep_input(){
  local nb_lines=${1:-5000}
  local nb_chars=${2:-2000}
  LC_ALL=C tr -cd '[:alnum:][ ,.]' < /dev/urandom \
  | fold -w "$nb_chars" \
  | head -n "$nb_lines" > "$input"
  bytes_in=$(< "$input" wc -c | awk '{print $0 + 0}')
  (
  echo "# $topic"
  echo " "
  echo "> run at $(date) on $(uname) $(uname -r)"
  echo " "
  ) > "$output_doc"
}

function benchmark(){
  (
  echo "### $topic: using \`$1\`"
  local full_command
  full_command=$(echo "$*" | tr "\n" " " | awk '{ gsub(/\t/," "); gsub(/\s\s+/," "); sub(/[ \t\r\n]+$/, ""); if(length($0)>60) {print substr($0,1,60) "..."} else {print} }')
  echo '```'
  echo "Command: '$full_command'"
  echo "Result: '$before' => '$(echo "$before" | "$@")'"
  echo '```'
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
    printf("* %.0f msec -- %.1f MB/s\n", msec/nb, bytes_in/msec/1000);
    }'
    echo " "
  ) | tee -a "$output_doc"
}

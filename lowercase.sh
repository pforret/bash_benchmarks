#!/usr/bin/env bash

input=$TMPDIR/transliteration.input.txt
echo "> Prepare input file ..."
LC_ALL=C tr -cd '[:alpha:]' < /dev/urandom | fold -w 2000 | head -n 10000 > "$input"
bytes_in=$(du -k "$input" | awk '{print $1*1024}')
echo "> Input file = $bytes_in bytes ..."

accented="UPPER lower Title ÎnTÊrÑatĪÖnÀl"
function benchmark(){
  # $1 = input file
  # $2 = output file
  # $3 = command
  local input="$1"
  local output="$2"
  shift ; shift

  converted=$(echo "$accented" | "$@")
  echo "* Example: [$accented] => [$converted]"
  for (( i = 0; i < 5; i++ )); do
    < "$input" /usr/bin/time -p "$@" 2>&1 > "$output" | grep real
  done \
  | awk -v bytes_in="$bytes_in" '
  BEGIN {nb=0;msec=0}
  { nb++; msec+=$2*1000}
  END {
    printf("* %.0f msec -- %.1f MB/s\n",msec/nb,bytes_in/msec/1000);
    }'
    echo " "

}

# cf https://stackoverflow.com/questions/10207354/how-to-remove-all-of-the-diacritics-from-a-file

echo "### Lowercase conversion: using awk"
benchmark "$input" "/dev/null" awk '{print tolower($0)}'

echo "### Lowercase conversion: using sed"
benchmark "$input" "/dev/null" sed 'y/ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏŁÑŃÔÖÒÓŒØŌǑÕẞŚŠÛÜǓÙǕǗǙǛÚŪŸŽŹŻ/abcdefghijklmnopqrstuvwxyzàáâäæãåāǎçćčèéêëēėęěîïííīįìǐłñńôöòóœøōǒõßśšûüǔùǖǘǚǜúūÿžźż/'

echo "### Lowercase conversion: using tr"
benchmark "$input" "/dev/null" tr "[:upper:]" "[:lower:]"


#!/usr/bin/env bash

input=$TMPDIR/transliteration.input.txt
echo "> Prepare input file ..."
LC_ALL=C tr -cd '[:alpha:]' < /dev/urandom | fold -w 2000 | head -n 10000 > "$input"
bytes_in=$(du -k "$input" | awk '{print $1*1024}')
echo "> Input file = $bytes_in bytes ..."

accented="Îñtèrńätìõnālísåtįòn"
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

# cf https://stackoverflow.com/questions/10207354/how-to-remove-all-of-the-diacritics-from-a-file

echo "### Text Transliteration: max speed (disk speed)"
benchmark "$input" "/dev/null" cat

echo "### Text Transliteration: using awk"
benchmark "$input" "/dev/null" awk '
  {
    gsub(/[àáâäæãåāǎ]/,"a");
    gsub(/[çćč]/,"c");
    gsub(/[èéêëēėęě]/,"e");
    gsub(/[îïííīįìǐ]/,"i");
    gsub(/[ł]/,"l");
    gsub(/[ñń]/,"n");
    gsub(/[ôöòóœøōǒõ]/,"o");
    gsub(/[ßśš]/,"s");
    gsub(/[ûüǔùǖǘǚǜúū]/,"u");
    gsub(/[ÿ]/,"y");
    gsub(/[žźż]/,"z");
    gsub(/[ÀÁÂÄÆÃÅĀǍ]/,"A");
    gsub(/[ÇĆČ]/,"C");
    gsub(/[ÈÉÊËĒĖĘĚ]/,"E");
    gsub(/[ÎÏÍÍĪĮÌǏ]/,"I");
    gsub(/[Ł]/,"L");
    gsub(/[ÑŃ]/,"N");
    gsub(/[ÔÖÒÓŒØŌǑÕ]/,"O");
    gsub(/[SSŚŠ]/,"S");
    gsub(/[ÛÜǓÙǕǗǙǛÚŪ]/,"U");
    gsub(/[Ÿ]/,"Y");
    gsub(/[ŽŹŻ]/,"Z");

    print
    }'

echo "### Text Transliteration: using iconv"
benchmark "$input" "/dev/null" iconv -f utf8 -t ascii//TRANSLIT//IGNORE

echo "### Text Transliteration: using sed"
benchmark "$input" "/dev/null" sed 'y/àáâäæãåāǎçćčèéêëēėęěîïííīįìǐłñńôöòóœøōǒõßśšûüǔùǖǘǚǜúūÿžźżÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏŁÑŃÔÖÒÓŒØŌǑÕẞŚŠÛÜǓÙǕǗǙǛÚŪŸŽŹŻ/aaaaaaaaaccceeeeeeeeiiiiiiiilnnooooooooosssuuuuuuuuuuyzzzAAAAAAAAACCCEEEEEEEEIIIIIIIILNNOOOOOOOOOSSSUUUUUUUUUUYZZZ/'

echo "### Text Transliteration: using tr"
benchmark "$input" "/dev/null" tr \
  'àáâäæãåāǎçćčèéêëēėęěîïííīįìǐłñńôöòóœøōǒõßśšûüǔùǖǘǚǜúūÿžźżÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏŁÑŃÔÖÒÓŒØŌǑÕẞŚŠÛÜǓÙǕǗǙǛÚŪŸŽŹŻ' \
  'aaaaaaaaaccceeeeeeeeiiiiiiiilnnooooooooosssuuuuuuuuuuyzzzAAAAAAAAACCCEEEEEEEEIIIIIIIILNNOOOOOOOOOSSSUUUUUUUUUUYZZZ'

#!/usr/bin/env bash
. _benchmark.sh

topic="Transliteration (remove accents)"
before='Îñtérńåtîônâl'

prep_input 5000 2000

# cf https://stackoverflow.com/questions/10207354/how-to-remove-all-of-the-diacritics-from-a-file

benchmark awk '
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

benchmark iconv -f utf8 -t ascii//TRANSLIT//IGNORE

benchmark sed 'y/àáâäæãåāǎçćčèéêëēėęěîïííīįìǐłñńôöòóœøōǒõßśšûüǔùǖǘǚǜúūÿžźżÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏŁÑŃÔÖÒÓŒØŌǑÕẞŚŠÛÜǓÙǕǗǙǛÚŪŸŽŹŻ/aaaaaaaaaccceeeeeeeeiiiiiiiilnnooooooooosssuuuuuuuuuuyzzzAAAAAAAAACCCEEEEEEEEIIIIIIIILNNOOOOOOOOOSSSUUUUUUUUUUYZZZ/'

benchmark tr \
  'àáâäæãåāǎçćčèéêëēėęěîïííīįìǐłñńôöòóœøōǒõßśšûüǔùǖǘǚǜúūÿžźżÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏŁÑŃÔÖÒÓŒØŌǑÕẞŚŠÛÜǓÙǕǗǙǛÚŪŸŽŹŻ' \
  'aaaaaaaaaccceeeeeeeeiiiiiiiilnnooooooooosssuuuuuuuuuuyzzzAAAAAAAAACCCEEEEEEEEIIIIIIIILNNOOOOOOOOOSSSUUUUUUUUUUYZZZ'

#!/usr/bin/env bash
. ../_benchmark.shtopic="Romanisation (remove accents)"

prep_input 5000 2000

# cf https://stackoverflow.com/questions/10207354/how-to-remove-all-of-the-diacritics-from-a-file

benchmark awk '
  {
    gsub(/[àáâäæãåāǎα]/,"a");
    gsub(/[β]/,"b");
    gsub(/[çćč]/,"c");
    gsub(/[èéêëēėęěεη]/,"e");
    gsub(/[îïííīįìǐι]/,"i");
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

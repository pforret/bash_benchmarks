# Bash benchmarks


## [Cut after N chars](cut_chars.md)
* cut first N chars of every line
* fastest technique is `awk '{print substr($0,1,20)}'`

## [Cut after N fields](cut_fields.md)
* cut first N fields of every line
* fastest technique is `awk '{print $1,$2,$3,$4,$5}'`

## [Lower case](lowercase.md)
* convert text to lower case
* fastest technique is `sed 'y/ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏŁÑŃÔÖÒÓŒØŌǑÕẞŚŠÛÜǓÙǕǗǙǛÚŪŸŽŹŻ/abcdefghijklmnopqrstuvwxyzàáâäæãåāǎçćčèéêëēėęěîïííīįìǐłñńôöòóœøōǒõßśšûüǔùǖǘǚǜúūÿžźż/'`

## [Transliteration](transliteration.md)
* remove accents/diacritics from text
* fastest technique is `sed 'y/àáâäæãåāǎçćčèéêëēėęěîïííīįìǐłñńôöòóœøōǒõßśšûüǔùǖǘǚǜúūÿžźżÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏŁÑŃÔÖÒÓŒØŌǑÕẞŚŠÛÜǓÙǕǗǙǛÚŪŸŽŹŻ/aaaaaaaaaccceeeeeeeeiiiiiiiilnnooooooooosssuuuuuuuuuuyzzzAAAAAAAAACCCEEEEEEEEIIIIIIIILNNOOOOOOOOOSSSUUUUUUUUUUYZZZ/'`

## [Trim spaces](trim.md)
* remove leading and trailing spaces from lines
* fastest technique is `awk '{sub(/^[ \t\r\n]+/, ""); sub(/[ \t\r\n]+$/, ""); print}'`
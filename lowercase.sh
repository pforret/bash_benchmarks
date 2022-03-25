#!/usr/bin/env bash
. _benchmark.sh

topic="Remove non-alphanumeric chars"
before='/Easy like 1-2-3!![]{}()/'

prep_input 5000 2000

benchmark awk '{print tolower($0)}'

benchmark sed 'y/ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏŁÑŃÔÖÒÓŒØŌǑÕẞŚŠÛÜǓÙǕǗǙǛÚŪŸŽŹŻ/abcdefghijklmnopqrstuvwxyzàáâäæãåāǎçćčèéêëēėęěîïííīįìǐłñńôöòóœøōǒõßśšûüǔùǖǘǚǜúūÿžźż/'

benchmark tr "[:upper:]" "[:lower:]"


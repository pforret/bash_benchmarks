# BASH BENCHMARKS
Benchmarks to test different methods for string, file, process manipulation, ...

## [Transliteration](https://github.com/pforret/bash_benchmarks/blob/main/transliteration.sh)

> inspired by [stackoverflow.com/questions/10207354/how-to-remove-all-of-the-diacritics-from-a-file](https://stackoverflow.com/questions/10207354/how-to-remove-all-of-the-diacritics-from-a-file)

### Transliteration (remove accents): using `awk`
* Command: `awk { gsub(/[àáâäæãåāǎ]/,"a"); gsub(/[çćč]/,"c"); gsub(/[èéêëēėęě]/,"e"); gsub(/[îïííīįìǐ]/,"i"); ...`
* Example: `Îñtérńåtîônâl` => `International`
* 130 msec -- 15.4 MB/s

### Transliteration (remove accents): using `iconv`
* Command: `iconv -f utf8 -t ascii//TRANSLIT//IGNORE`
* Example: `Îñtérńåtîônâl` => `^I~nt'er'nat^i^on^al`
* 60 msec -- 33.4 MB/s

### Transliteration (remove accents): using `sed`
* Command: `sed y/àáâäæãåāǎçćčèéêëēėęěîïííīįìǐłñńôöòóœøōǒõßśšûüǔùǖǘǚǜúūÿžźżÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏŁÑŃÔÖÒÓ...`
* Example: `Îñtérńåtîônâl` => `International`
* **30 msec -- 66.7 MB/s**

### Transliteration (remove accents): using `tr`
* Command: `tr àáâäæãåāǎçćčèéêëēėęěîïííīįìǐłñńôöòóœøōǒõßśšûüǔùǖǘǚǜúūÿžźżÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏŁÑŃÔÖÒÓŒØŌ...`
* Example: `Îñtérńåtîônâl` => `International`
* 400 msec -- 5.0 MB/s


## [Lowercase conversion](https://github.com/pforret/bash_benchmarks/blob/main/lowercase.sh)

### Remove non-alphanumeric chars: using `awk`
* Command: `awk {print tolower($0)}`
* Example: `/Easy like 1-2-3!![]{}()/` => `/easy like 1-2-3!![]{}()/`
* 90 msec -- 22.2 MB/s

### Remove non-alphanumeric chars: using `sed`
* Command: `sed y/ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏŁÑŃÔÖÒÓŒØŌǑÕẞŚŠÛÜǓÙǕǗǙǛÚŪŸŽŹŻ/abcdefgh...`
* Example: `/Easy like 1-2-3!![]{}()/` => `/easy like 1-2-3!![]{}()/`
* **30 msec -- 66.7 MB/s**

### Remove non-alphanumeric chars: using `tr`
* Command: `tr [:upper:] [:lower:]`
* Example: `/Easy like 1-2-3!![]{}()/` => `/easy like 1-2-3!![]{}()/`
* 404 msec -- 5.0 MB/s


## [Remove alphanumeric characters]()

### Remove non-alphanumeric chars: using `awk`
* Command: `awk {gsub(/[^0-9a-zA-Z .-]*/,""); print;}`
* Example: `/Easy like 1-2-3!![]{}()/` => `Easy like 1-2-3`
* 1410 msec -- 1.4 MB/s

### Remove non-alphanumeric chars: using `sed`
* Command: `sed s/[^0-9a-zA-Z .-]*//g`
* Example: `/Easy like 1-2-3!![]{}()/` => `Easy like 1-2-3`
* 1092 msec -- 1.8 MB/s

### Remove non-alphanumeric chars: using `sed`
* Command: `sed s/[^0-9a-zA-Z .-]//g`
* Example: `/Easy like 1-2-3!![]{}()/` => `Easy like 1-2-3`
* **212 msec -- 9.4 MB/s**

### Remove non-alphanumeric chars: using `tr`
* Command: `tr -cd [0-9a-zA-Z .-]`
* Example: `/Easy like 1-2-3!![]{}()/` => `/Easy like 123[]/`
* 394 msec -- 5.1 MB/s

### Remove non-alphanumeric chars: using `tr`
* Command: `tr -cd [:alnum:]`
* Example: `/Easy like 1-2-3!![]{}()/` => `Easylike123`
* 392 msec -- 5.1 MB/s


## Trim spaces

### Trim leading and trailing spaces: using `awk`
* Command: `awk {sub(/^[ \t\r\n]+/, ""); sub(/[ \t\r\n]+$/, ""); print}`
* Example: `    Just a Test          ` => `Just a Test`
* **50 msec -- 79.6 MB/s**

### Trim leading and trailing spaces: using `sed`
* Command: `sed -e s/^[[:space:]]*// -e s/[[:space:]]*$//`
* Example: `    Just a Test          ` => `Just a Test`
* 350 msec -- 11.4 MB/s

### Trim leading and trailing spaces: using `xargs`
* Command: `xargs`
* Example: `    Just a Test          ` => `Just a Test`
* 946 msec -- 4.2 MB/s


## Cut first N chars

### Cut first 20 chars: using `awk`
* Command: `awk {print substr($0,1,20)}`
* Example: `0123456789012345678901234567890123456789` => `01234567890123456789`
* **160 msec -- 125.1 MB/s**

### Cut first 20 chars: using `cut`
* Command: `cut -c1-20`
* Example: `0123456789012345678901234567890123456789` => `01234567890123456789`
* 2082 msec -- 9.6 MB/s


---
PS: all these times/speeds were measured on _my_ laptop; a Macbook Pro M1 2021 16". 
The absolute speed on your machine for these scripts might be different, 
but the relative speeds of one method (e.g. `sed`) compared to others (e.g. `tr`) remains relevant.

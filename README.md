# BASH BENCHMARKS
Benchmarks to test different methods for string, file, process manipulation, ...

## [Transliteration](https://github.com/pforret/bash_benchmarks/blob/main/transliteration.sh)

> inspired by [stackoverflow.com/questions/10207354/how-to-remove-all-of-the-diacritics-from-a-file](https://stackoverflow.com/questions/10207354/how-to-remove-all-of-the-diacritics-from-a-file)

### Transliteration (remove accents): using `awk`
```
Command: 'awk { gsub(/[àáâäæãåāǎ]/,"a"); gsub(/[çćč]/,"c"); gsub(/[èéê...'
Result: 'Îñtérńåtîônâl' => 'International'
```
* 130 msec -- 15.4 MB/s

### Transliteration (remove accents): using `iconv`
```
Command: 'iconv -f utf8 -t ascii//TRANSLIT//IGNORE'
Result: 'Îñtérńåtîônâl' => '^I~nt'er'nat^i^on^al'
```
* 60 msec -- 33.4 MB/s

### Transliteration (remove accents): using `sed`
```
Command: 'sed y/àáâäæãåāǎçćčèéêëēėęěîïííīįìǐłñńôöòóœøōǒõßśšûüǔùǖǘǚǜúūÿ...'
Result: 'Îñtérńåtîônâl' => 'International'
```
* **30 msec -- 66.7 MB/s**

### Transliteration (remove accents): using `tr`
```
Command: 'tr àáâäæãåāǎçćčèéêëēėęěîïííīįìǐłñńôöòóœøōǒõßśšûüǔùǖǘǚǜúūÿžźż...'
Result: 'Îñtérńåtîônâl' => 'International'
```
* 400 msec -- 5.0 MB/s


## [Lowercase conversion](https://github.com/pforret/bash_benchmarks/blob/main/lowercase.sh)

### Convert to lowercase: using `awk`
```
Command: 'awk {print tolower($0)}'
Result: '/UPPER lower Title ÎÑ áçtîÔŃ/' => '/upper lower title îñ áçtîôń/'
```
* 80 msec -- 25.0 MB/s

### Convert to lowercase: using `sed`
```
Command: 'sed y/ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏ...'
Result: '/UPPER lower Title ÎÑ áçtîÔŃ/' => '/upper lower title îñ áçtîôń/'
```
* **30 msec -- 66.7 MB/s**

### Convert to lowercase: using `tr`
```
Command: 'tr [:upper:] [:lower:]'
Result: '/UPPER lower Title ÎÑ áçtîÔŃ/' => '/upper lower title îñ áçtîôń/'
```
* 400 msec -- 5.0 MB/s


## [Remove alphanumeric characters]()

### Remove non-alphanumeric chars: using `awk`
```
Command: 'awk {gsub(/[^0-9a-zA-Z .-]*/,""); print;}'
Result: '/Easy like 1-2-3!![]{}()/' => 'Easy like 1-2-3'
```
* 1408 msec -- 1.4 MB/s

### Remove non-alphanumeric chars: using `sed`
```
Command: 'sed s/[^0-9a-zA-Z .-]*//g'
Result: '/Easy like 1-2-3!![]{}()/' => 'Easy like 1-2-3'
```
* 1132 msec -- 1.8 MB/s

### Remove non-alphanumeric chars: using `sed`
```
Command: 'sed s/[^0-9a-zA-Z .-]//g'
Result: '/Easy like 1-2-3!![]{}()/' => 'Easy like 1-2-3'
```
* **260 msec -- 7.7 MB/s**

### Remove non-alphanumeric chars: using `tr`
```
Command: 'tr -cd [0-9a-zA-Z .-]'
Result: '/Easy like 1-2-3!![]{}()/' => '/Easy like 123[]/'
```
* 392 msec -- 5.1 MB/s

### Remove non-alphanumeric chars: using `tr`
```
Command: 'tr -cd [:alnum:]'
Result: '/Easy like 1-2-3!![]{}()/' => 'Easylike123'
```
* 388 msec -- 5.2 MB/s


## Trim spaces

### Trim leading and trailing spaces: using `awk`
```
Command: 'awk {sub(/^[ \t\r\n]+/, ""); sub(/[ \t\r\n]+$/, ""); print}'
Result: '    Just a Test          ' => 'Just a Test'
```
* **54 msec -- 73.7 MB/s**

### Trim leading and trailing spaces: using `sed`
```
Command: 'sed -e s/^[[:space:]]*// -e s/[[:space:]]*$//'
Result: '    Just a Test          ' => 'Just a Test'
```
* 360 msec -- 11.1 MB/s

### Trim leading and trailing spaces: using `xargs`
```
Command: 'xargs'
Result: '    Just a Test          ' => 'Just a Test'
```
* 962 msec -- 4.1 MB/s

## Cut first N chars

### Cut first 20 chars: using `awk`
```
Command: 'awk {print substr($0,1,20)}'
Result: '0123456789012345678901234567890123456789' => '01234567890123456789'
```
* **80 msec -- 125.1 MB/s**

### Cut first 20 chars: using `cut`
```
Command: 'cut -c1-20'
Result: '0123456789012345678901234567890123456789' => '01234567890123456789'
```
* 1040 msec -- 9.6 MB/s

### Cut first 20 chars: using `bash`
```
Command: 'bash -c while read line ; do echo ${line:0:20} ; done'
Result: '0123456789012345678901234567890123456789' => '01234567890123456789'
```
* 796 msec -- 12.6 MB/s


---
PS: all these times/speeds were measured on _my_ laptop; a Macbook Pro M1 2021 16". 
The absolute speed on your machine for these scripts might be different, 
but the relative speeds of one method (e.g. `sed`) compared to others (e.g. `tr`) remains relevant.

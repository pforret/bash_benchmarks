# Transliteration (remove accents)
 
> run at Sun Mar 27 19:22:16 CEST 2022 on Darwin 21.4.0
 
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
* 30 msec -- 66.7 MB/s
 
### Transliteration (remove accents): using `tr`
```
Command: 'tr àáâäæãåāǎçćčèéêëēėęěîïííīįìǐłñńôöòóœøōǒõßśšûüǔùǖǘǚǜúūÿžźż...'
Result: 'Îñtérńåtîônâl' => 'International'
```
* 400 msec -- 5.0 MB/s
 

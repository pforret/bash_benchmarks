# Transliteration (remove accents)
 
> run at Thu Apr  7 00:38:14 CEST 2022 on Darwin 21.4.0
 
### Transliteration (remove accents): using `awk`
```
Command: 'awk { gsub(/[àáâäæãåāǎ]/,"a"); gsub(/[çćč]/,"c"); gsub(/[èéê...'
Result: '  ÎńtérNäTÌÕNãЛ like Ελληνική Россия մայր  ' => '  InterNaTIONaЛ like Ελληνική Россия մայր  '
```
* Throughput speed: `15.4 MB/s`
* Invocation speed: `250 ops/sec`

### Transliteration (remove accents): using `iconv`
```
Command: 'iconv -f utf8 -t ascii//TRANSLIT//IGNORE'
Result: '  ÎńtérNäTÌÕNãЛ like Ελληνική Россия մայր  ' => '  ^I'nt'erN"aT`I~ON~a like     '
```
* Throughput speed: `33.4 MB/s`
* Invocation speed: `500 ops/sec`

### Transliteration (remove accents): using `sed`
```
Command: 'sed y/àáâäæãåāǎçćčèéêëēėęěîïííīįìǐłñńôöòóœøōǒõßśšûüǔùǖǘǚǜúūÿ...'
Result: '  ÎńtérNäTÌÕNãЛ like Ελληνική Россия մայր  ' => '  InterNaTIONaЛ like Ελληνική Россия մայր  '
```
* Throughput speed: `66.7 MB/s`
* Invocation speed: `500 ops/sec`

### Transliteration (remove accents): using `tr`
```
Command: 'tr àáâäæãåāǎçćčèéêëēėęěîïííīįìǐłñńôöòóœøōǒõßśšûüǔùǖǘǚǜúūÿžźż...'
Result: '  ÎńtérNäTÌÕNãЛ like Ελληνική Россия մայր  ' => '  InterNaTIONaЛ like Ελληνική Россия մայր  '
```
* Throughput speed: `5.0 MB/s`
* Invocation speed: `500 ops/sec`


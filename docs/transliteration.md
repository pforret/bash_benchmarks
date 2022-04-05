# Transliteration (remove accents)
 
> run at Tue Apr  5 23:27:53 CEST 2022 on Darwin 21.4.0
 
### Transliteration (remove accents): using `awk`
```
Command: 'awk { gsub(/[àáâäæãåāǎ]/,"a"); gsub(/[çćč]/,"c"); gsub(/[èéê...'
Result: '  ÎńtérNäTÌÕNãЛ Tεχt [is]: excıΤΙNĞ¡!  ' => '  InterNaTIONaЛ Tεχt [is]: excıΤΙNĞ¡!  '
```
* Throughput speed: `15.4 MB/s`
* Invocation speed: `4.17 msec/op`

### Transliteration (remove accents): using `iconv`
```
Command: 'iconv -f utf8 -t ascii//TRANSLIT//IGNORE'
Result: '  ÎńtérNäTÌÕNãЛ Tεχt [is]: excıΤΙNĞ¡!  ' => '  ^I'nt'erN"aT`I~ON~a Tt [is]: exciNG!!  '
```
* Throughput speed: `33.4 MB/s`
* Invocation speed: `1.67 msec/op`

### Transliteration (remove accents): using `sed`
```
Command: 'sed y/àáâäæãåāǎçćčèéêëēėęěîïííīįìǐłñńôöòóœøōǒõßśšûüǔùǖǘǚǜúūÿ...'
Result: '  ÎńtérNäTÌÕNãЛ Tεχt [is]: excıΤΙNĞ¡!  ' => '  InterNaTIONaЛ Tεχt [is]: excıΤΙNĞ¡!  '
```
* Throughput speed: `66.7 MB/s`
* Invocation speed: `1.67 msec/op`

### Transliteration (remove accents): using `tr`
```
Command: 'tr àáâäæãåāǎçćčèéêëēėęěîïííīįìǐłñńôöòóœøōǒõßśšûüǔùǖǘǚǜúūÿžźż...'
Result: '  ÎńtérNäTÌÕNãЛ Tεχt [is]: excıΤΙNĞ¡!  ' => '  InterNaTIONaЛ Tεχt [is]: excıΤΙNĞ¡!  '
```
* Throughput speed: `5.0 MB/s`
* Invocation speed: `1.67 msec/op`


# Romanisation (remove accents)
 
> run at Tue Apr  5 23:43:13 CEST 2022 on Darwin 21.4.0
 
### Romanisation (remove accents): using `awk`
```
Command: 'awk { gsub(/[àáâäæãåāǎα]/,"a"); gsub(/[β]/,"b"); gsub(/[çćč]...'
Result: '  ÎńtérNäTÌÕNãЛ Tεχt [is]: excıΤΙNĞ¡!  ' => '  InterNaTIONaЛ Teχt [is]: excıΤΙNĞ¡!  '
```
* Throughput speed: `15.4 MB/s`
* Invocation speed: `200 ops/sec`

### Romanisation (remove accents): using `iconv`
```
Command: 'iconv -f utf8 -t ascii//TRANSLIT//IGNORE'
Result: '  ÎńtérNäTÌÕNãЛ Tεχt [is]: excıΤΙNĞ¡!  ' => '  ^I'nt'erN"aT`I~ON~a Tt [is]: exciNG!!  '
```
* Throughput speed: `33.4 MB/s`
* Invocation speed: `667 ops/sec`

### Romanisation (remove accents): using `sed`
```
Command: 'sed y/àáâäæãåāǎçćčèéêëēėęěîïííīįìǐłñńôöòóœøōǒõßśšûüǔùǖǘǚǜúūÿ...'
Result: '  ÎńtérNäTÌÕNãЛ Tεχt [is]: excıΤΙNĞ¡!  ' => '  InterNaTIONaЛ Tεχt [is]: excıΤΙNĞ¡!  '
```
* Throughput speed: `66.7 MB/s`
* Invocation speed: `500 ops/sec`

### Romanisation (remove accents): using `tr`
```
Command: 'tr àáâäæãåāǎçćčèéêëēėęěîïííīįìǐłñńôöòóœøōǒõßśšûüǔùǖǘǚǜúūÿžźż...'
Result: '  ÎńtérNäTÌÕNãЛ Tεχt [is]: excıΤΙNĞ¡!  ' => '  InterNaTIONaЛ Tεχt [is]: excıΤΙNĞ¡!  '
```
* Throughput speed: `5.0 MB/s`
* Invocation speed: `500 ops/sec`


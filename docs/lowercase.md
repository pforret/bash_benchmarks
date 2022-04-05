# Convert to lowercase
 
> run at Tue Apr  5 23:42:41 CEST 2022 on Darwin 21.4.0
 
### Convert to lowercase: using `awk`
```
Command: 'awk {print tolower($0)}'
Result: '  ÎńtérNäTÌÕNãЛ Tεχt [is]: excıΤΙNĞ¡!  ' => '  îńtérnätìõnãл tεχt [is]: excıτιnğ¡!  '
```
* Throughput speed: `23.8 MB/s`
* Invocation speed: `222 ops/sec`

### Convert to lowercase: using `sed`
```
Command: 'sed y/ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏ...'
Result: '  ÎńtérNäTÌÕNãЛ Tεχt [is]: excıΤΙNĞ¡!  ' => '  îńtérnätìõnãЛ tεχt [is]: excıΤΙnĞ¡!  '
```
* Throughput speed: `66.7 MB/s`
* Invocation speed: `500 ops/sec`

### Convert to lowercase: using `tr`
```
Command: 'tr [:upper:] [:lower:]'
Result: '  ÎńtérNäTÌÕNãЛ Tεχt [is]: excıΤΙNĞ¡!  ' => '  îńtérnätìõnãл tεχt [is]: excıτιnğ¡!  '
```
* Throughput speed: `5.0 MB/s`
* Invocation speed: `500 ops/sec`

### Convert to lowercase: using `bash`
```
Command: 'bash -c while read line ; do echo ${line,,} ; done'
Result: '  ÎńtérNäTÌÕNãЛ Tεχt [is]: excıΤΙNĞ¡!  ' => 'îńtérnätìõnãл tεχt [is]: excıτιnğ¡!'
```
* Throughput speed: `1.8 MB/s`
* Invocation speed: `286 ops/sec`


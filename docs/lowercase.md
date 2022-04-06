# Convert to lowercase
 
> run at Wed Apr  6 10:42:08 CEST 2022 on Linux 4.4.0-19041-Microsoft
 
### Convert to lowercase: using `awk`
```
Command: 'awk {print tolower($0)}'
Result: '  ÎńtérNäTÌÕNãЛ Tεχt [is]: excıΤΙNĞ¡!  ' => '  îńtérnätìõnãл tεχt [is]: excıτιnğ¡!  '
```
* Throughput speed: `0.0 MB/s`
* Invocation speed: `18519 ops/sec`

### Convert to lowercase: using `sed`
```
Command: 'sed y/ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏ...'
Result: '  ÎńtérNäTÌÕNãЛ Tεχt [is]: excıΤΙNĞ¡!  ' => '  îńtérnätìõnãЛ tεχt [is]: excıΤΙnĞ¡!  '
```
* Throughput speed: 
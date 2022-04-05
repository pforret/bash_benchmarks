# Convert to uppercase
 
> run at Tue Apr  5 23:26:28 CEST 2022 on Darwin 21.4.0
 
### Convert to uppercase: using `awk`
```
Command: 'awk {print toupper($0)}'
Result: '  ÎńtérNäTÌÕNãЛ Tεχt [is]: excıΤΙNĞ¡!  ' => '  ÎŃTÉRNÄTÌÕNÃЛ TΕΧT [IS]: EXCIΤΙNĞ¡!  '
```
* Throughput speed: `24.4 MB/s`
* Invocation speed: `5.00 msec/op`

### Convert to uppercase: using `sed`
```
Command: 'sed y/abcdefghijklmnopqrstuvwxyzàáâäæãåāǎçćčèéêëēėęěîïííīįìǐ...'
Result: '  ÎńtérNäTÌÕNãЛ Tεχt [is]: excıΤΙNĞ¡!  ' => '  ÎŃTÉRNÄTÌÕNÃЛ TεχT [IS]: EXCıΤΙNĞ¡!  '
```
* Throughput speed: `66.7 MB/s`
* Invocation speed: `1.67 msec/op`

### Convert to uppercase: using `tr`
```
Command: 'tr [:lower:] [:upper:]'
Result: '  ÎńtérNäTÌÕNãЛ Tεχt [is]: excıΤΙNĞ¡!  ' => '  ÎŃTÉRNÄTÌÕNÃЛ TΕΧT [IS]: EXCIΤΙNĞ¡!  '
```
* Throughput speed: `5.0 MB/s`
* Invocation speed: `2.50 msec/op`

### Convert to uppercase: using `bash`
```
Command: 'bash -c while read line ; do echo ${line^^} ; done'
Result: '  ÎńtérNäTÌÕNãЛ Tεχt [is]: excıΤΙNĞ¡!  ' => 'ÎŃTÉRNÄTÌÕNÃЛ TΕΧT [IS]: EXCIΤΙNĞ¡!'
```
* Throughput speed: `1.8 MB/s`
* Invocation speed: `4.17 msec/op`


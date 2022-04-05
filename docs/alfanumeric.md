# Remove non-alphanumeric chars
 
> run at Tue Apr  5 23:29:51 CEST 2022 on Darwin 21.4.0
 
### Remove non-alphanumeric chars: using `awk`
```
Command: 'awk {gsub(/[^0-9a-zA-Z .-]*/,""); print;}'
Result: '  ÎńtérNäTÌÕNãЛ Tεχt [is]: excıΤΙNĞ¡!  ' => '  trNTN Tt is excN  '
```
* Throughput speed: `1.4 MB/s`
* Invocation speed: `4.17 msec/op`

### Remove non-alphanumeric chars: using `sed`
```
Command: 'sed s/[^0-9a-zA-Z .-]*//g'
Result: '  ÎńtérNäTÌÕNãЛ Tεχt [is]: excıΤΙNĞ¡!  ' => ''
```
* Throughput speed: `1.8 MB/s`
* Invocation speed: `1.67 msec/op`

### Remove non-alphanumeric chars: using `sed`
```
Command: 'sed s/[^0-9a-zA-Z .-]//g'
Result: '  ÎńtérNäTÌÕNãЛ Tεχt [is]: excıΤΙNĞ¡!  ' => '  ÎtérNäTÌÕNã Tt is excN  '
```
* Throughput speed: `7.7 MB/s`
* Invocation speed: `0.83 msec/op`

### Remove non-alphanumeric chars: using `tr`
```
Command: 'tr -cd 0-9a-zA-Z .-'
Result: '  ÎńtérNäTÌÕNãЛ Tεχt [is]: excıΤΙNĞ¡!  ' => '  trNTN Tt is excN  '
```
* Throughput speed: `5.3 MB/s`
* Invocation speed: `0.83 msec/op`

### Remove non-alphanumeric chars: using `tr`
```
Command: 'tr -cd [:alnum:][:blank:].-'
Result: '  ÎńtérNäTÌÕNãЛ Tεχt [is]: excıΤΙNĞ¡!  ' => '  ÎńtérNäTÌÕNãЛ Tεχt is excıΤΙNĞ  '
```
* Throughput speed: `5.3 MB/s`
* Invocation speed: `1.67 msec/op`


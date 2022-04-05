# Cut first 20 chars
 
> run at Tue Apr  5 23:28:26 CEST 2022 on Darwin 21.4.0
 
### Cut first 20 chars: using `awk`
```
Command: 'awk {print substr($0,1,20)}'
Result: '0123456789012345678901234567890123456789' => '01234567890123456789'
```
* Throughput speed: `125.1 MB/s`
* Invocation speed: `4.17 msec/op`

### Cut first 20 chars: using `cut`
```
Command: 'cut -c1-20'
Result: '0123456789012345678901234567890123456789' => '01234567890123456789'
```
* Throughput speed: `9.6 MB/s`
* Invocation speed: `0.83 msec/op`

### Cut first 20 chars: using `bash`
```
Command: 'bash -c while read line ; do echo ${line:0:20} ; done'
Result: '0123456789012345678901234567890123456789' => '01234567890123456789'
```
* Throughput speed: `12.5 MB/s`
* Invocation speed: `2.50 msec/op`


# Cut first 5 fields
 
> run at Tue Apr  5 23:29:12 CEST 2022 on Darwin 21.4.0
 
### Cut first 5 fields: using `awk`
```
Command: 'awk {print $1,$2,$3,$4,$5}'
Result: 'f1 : f3 f4 f5 f6 f7' => 'f1 : f3 f4 f5'
```
* Throughput speed: `166.8 MB/s`
* Invocation speed: `4.17 msec/op`

### Cut first 5 fields: using `cut`
```
Command: 'cut -d -f1-5'
Result: 'f1 : f3 f4 f5 f6 f7' => 'f1 : f3 f4 f5'
```
* Throughput speed: `17.6 MB/s`
* Invocation speed: `1.67 msec/op`

### Cut first 5 fields: using `bash`
```
Command: 'bash -c while IFS=" " read -r f1 f2 f3 f4 f5 rest; do echo $...'
Result: 'f1 : f3 f4 f5 f6 f7' => 'f1 : f3 f4 f5'
```
* Throughput speed: `4.3 MB/s`
* Invocation speed: `2.50 msec/op`


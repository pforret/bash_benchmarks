# Trim leading and trailing spaces
 
> run at Tue Apr  5 23:44:50 CEST 2022 on Darwin 21.4.0
 
### Trim leading and trailing spaces: using `awk`
```
Command: 'awk {sub(/^[ \t\r\n]+/, ""); sub(/[ \t\r\n]+$/, ""); print}'
Result: '    Just a Test          ' => 'Just a Test'
```
* Throughput speed: `76.5 MB/s`
* Invocation speed: `286 ops/sec`

### Trim leading and trailing spaces: using `sed`
```
Command: 'sed -e s/^[[:space:]]*// -e s/[[:space:]]*$//'
Result: '    Just a Test          ' => 'Just a Test'
```
* Throughput speed: `11.4 MB/s`
* Invocation speed: `1000 ops/sec`

### Trim leading and trailing spaces: using `xargs`
```
Command: 'xargs'
Result: '    Just a Test          ' => 'Just a Test'
```
* Throughput speed: `4.2 MB/s`
* Invocation speed: `667 ops/sec`


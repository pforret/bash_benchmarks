# Remove non-alphanumeric chars
 
> run at Wed Apr  6 10:42:07 CEST 2022 on Linux 4.4.0-19041-Microsoft
 
### Remove non-alphanumeric chars: using `awk`
```
Command: 'awk {gsub(/[^0-9a-zA-Z .-]*/,""); print;}'
Result: '   Some text, some more: 'not so [easy]' to! define?  ' => '   Some text some more not so easy to define  '
```
* Throughput speed: `0.0 MB/s`
* Invocation speed: `15625 ops/sec`

### Remove non-alphanumeric chars: using `sed`
```
Command: 'sed s/[^0-9a-zA-Z .-]*//g'
Result: '   Some text, some more: 'not so [easy]' to! define?  ' => '   Some text some more not so easy to define  '
```
* Throughput speed: `0.0 MB/s`
* Invocation speed: `17857 ops/sec`

### Remove non-alphanumeric chars: using `sed`
```
Command: 'sed s/[^0-9a-zA-Z .-]//g'
Result: '   Some text, some more: 'not so [easy]' to! define?  ' => '   Some text some more not so easy to define  '
```
* Throughput speed: `0.0 MB/s`
* Invocation speed: `20000 ops/sec`

### Remove non-alphanumeric chars: using `tr`
```
Command: 'tr -cd 0-9a-zA-Z .-'
Result: '   Some text, some more: 'not so [easy]' to! define?  ' => '   Some text some more not so easy to define  '
```
* Throughput speed: `0.0 MB/s`
* Invocation speed: `18519 ops/sec`

### Remove non-alphanumeric chars: using `tr`
```
Command: 'tr -cd [:alnum:][:blank:].-'
Result: '   Some text, some more: 'not so [easy]' to! define?  ' => '   Some text some more not so easy to define  '
```
* Throughput speed: `0.0 MB/s`
* Invocation speed: `17241 ops/sec`


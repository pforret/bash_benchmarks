# Remove non-alphanumeric chars
 
> run at Tue Apr  5 23:42:10 CEST 2022 on Darwin 21.4.0
 
### Remove non-alphanumeric chars: using `awk`
```
Command: 'awk {gsub(/[^0-9a-zA-Z .-]*/,""); print;}'
Result: '   Some text, some more: 'not so [easy]' to! define?  ' => '   Some text some more not so easy to define  '
```
* Throughput speed: `1.4 MB/s`
* Invocation speed: `222 ops/sec`

### Remove non-alphanumeric chars: using `sed`
```
Command: 'sed s/[^0-9a-zA-Z .-]*//g'
Result: '   Some text, some more: 'not so [easy]' to! define?  ' => '   Some text some more not so easy to define  '
```
* Throughput speed: `1.8 MB/s`
* Invocation speed: `667 ops/sec`

### Remove non-alphanumeric chars: using `sed`
```
Command: 'sed s/[^0-9a-zA-Z .-]//g'
Result: '   Some text, some more: 'not so [easy]' to! define?  ' => '   Some text some more not so easy to define  '
```
* Throughput speed: `7.7 MB/s`
* Invocation speed: `667 ops/sec`

### Remove non-alphanumeric chars: using `tr`
```
Command: 'tr -cd 0-9a-zA-Z .-'
Result: '   Some text, some more: 'not so [easy]' to! define?  ' => '   Some text some more not so easy to define  '
```
* Throughput speed: `5.3 MB/s`
* Invocation speed: `667 ops/sec`

### Remove non-alphanumeric chars: using `tr`
```
Command: 'tr -cd [:alnum:][:blank:].-'
Result: '   Some text, some more: 'not so [easy]' to! define?  ' => '   Some text some more not so easy to define  '
```
* Throughput speed: `5.3 MB/s`
* Invocation speed: `667 ops/sec`


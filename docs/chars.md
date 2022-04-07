# chars
 
> run at Thu Apr  7 22:01:00 CEST 2022 on macOS 12.3 arm64 Darwin
 
### cur the first 20 characters of each line: using `awk`
```
Command: 'awk {print substr($0,1,20)}'
Result: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit' => 'Lorem ipsum dolor si'
```
* Throughput speed: `327.87 MB/sec`
* Invocation speed: `257 ops/sec`

### cur the first 20 characters of each line: using `cut`
```
Command: 'cut -c1-20'
Result: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit' => 'Lorem ipsum dolor si'
```
* Throughput speed: `43.96 MB/sec`
* Invocation speed: `926 ops/sec`

### cur the first 20 characters of each line: using `${line:0:20}`
```
Command: '${line:0:20}'
Result: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit' => 'Lorem ipsum dolor si'
```
* Throughput speed: `8.13 MB/sec`
* Invocation speed: `9524 ops/sec`


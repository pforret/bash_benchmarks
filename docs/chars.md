# chars
 
> run at Thu Apr  7 01:27:39 CEST 2022 on macOS 12.3 arm64 Darwin
 
### cur the first 20 characters of each line: using `awk`
```
Command: 'awk {print substr($0,1,20)}'
Result: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit' => 'Lorem ipsum dolor si'
```
* Throughput speed: `100.0 MB/s`
* Invocation speed: `258 ops/sec`

### cur the first 20 characters of each line: using `cut`
```
Command: 'cut -c1-20'
Result: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit' => 'Lorem ipsum dolor si'
```
* Throughput speed: `9.1 MB/s`
* Invocation speed: `916 ops/sec`

### cur the first 20 characters of each line: using `${line:0:20}`
```
Command: '${line:0:20}'
Result: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit' => 'Lorem ipsum dolor si'
```
* Throughput speed: `3.8 MB/s`
* Invocation speed: `10753 ops/sec`


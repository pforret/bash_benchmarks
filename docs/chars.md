# chars
 
> run at Thu Apr  7 23:11:16 CEST 2022 on macOS 12.3 arm64 Darwin
 
### cut the first 20 characters of each line: using `awk`
```
Command: 'awk {print substr($0,1,20)}'
Result: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit' => 'Lorem ipsum dolor si'
```
* Throughput speed: `322.58 MB/sec`
* Invocation speed: `256 ops/sec`

### cut the first 20 characters of each line: using `cut`
```
Command: 'cut -c1-20'
Result: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit' => 'Lorem ipsum dolor si'
```
* Throughput speed: `43.98 MB/sec`
* Invocation speed: `926 ops/sec`

### cut the first 20 characters of each line: using `${line:0:20}`
```
Command: '${line:0:20}'
Result: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit' => 'Lorem ipsum dolor si'
```
* Throughput speed: `8.51 MB/sec`
* Invocation speed: `10989 ops/sec`


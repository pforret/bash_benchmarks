# chars
 
> run at Fri Apr  8 20:40:40 CEST 2022 on macOS 12.3 arm64 Darwin (v0.5.7)
 
### cut the first 20 characters of each line: using `awk`
```
Command: 'awk {print substr($0,1,20)}'
Result: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit' => 'Lorem ipsum dolor si'
```
* Throughput speed: `328 MB/sec`
* Invocation speed: `247 ops/sec`

### cut the first 20 characters of each line: using `cut`
```
Command: 'cut -c1-20'
Result: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit' => 'Lorem ipsum dolor si'
```
* Throughput speed: `43 MB/sec`
* Invocation speed: `903 ops/sec`

### cut the first 20 characters of each line: using `${line:0:20}`
```
Command: '${line:0:20}'
Result: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit' => 'Lorem ipsum dolor si'
```
* Throughput speed: `8 MB/sec`
* Invocation speed: `10638 ops/sec`


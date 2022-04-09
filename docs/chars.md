# chars
 
> run at Fri Apr  8 22:50:39 CEST 2022 on macOS 12.3 arm64 Darwin (v0.5.9)
 
### cut the first 20 characters of each line: using `awk`
```
Command: 'awk {print substr($0,1,20)}'
Result: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit' => 'Lorem ipsum dolor si'
```
* Throughput speed: `329 MB/sec`
* Invocation speed: `258 ops/sec`

### cut the first 20 characters of each line: using `cut`
```
Command: 'cut -c1-20'
Result: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit' => 'Lorem ipsum dolor si'
```
* Throughput speed: `44 MB/sec`
* Invocation speed: `920 ops/sec`

### cut the first 20 characters of each line: using `${line:0:20}`
```
Command: '${line:0:20}'
Result: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit' => 'Lorem ipsum dolor si'
```
* Throughput speed: `9 MB/sec`
* Invocation speed: `10753 ops/sec`


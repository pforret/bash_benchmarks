# chars
 
> run at Sat Apr 16 22:12:53 CEST 2022 on macOS 12.3 arm64 Darwin (v0.6.0)
 
### cut the first 20 characters of each line: using `awk`
```
Command: 'awk {print substr($0,1,20)}'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
After : 'Lorem ipsum dolor si'
```
* Binary: __/opt/homebrew/Cellar/gawk/5.1.1/bin/gawk__
* Throughput speed: `552 MB/sec`
* Invocation speed: `271 ops/sec`

### cut the first 20 characters of each line: using `cut`
```
Command: 'cut -c1-20'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
After : 'Lorem ipsum dolor si'
```
* Binary: __/usr/bin/cut__
* Throughput speed: `56 MB/sec`
* Invocation speed: `1062 ops/sec`

### cut the first 20 characters of each line: using `gcut`
```
Command: 'gcut -c1-20'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
After : 'Lorem ipsum dolor si'
```
* Binary: __/opt/homebrew/Cellar/coreutils/9.1/bin/gcut__
* Throughput speed: `625 MB/sec`
* Invocation speed: `899 ops/sec`

### cut the first 20 characters of each line: using `${line:0:20}`
```
Command: '${line:0:20}'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
After : 'Lorem ipsum dolor si'
```
* Throughput speed: `9 MB/sec`
* Invocation speed: `11236 ops/sec`


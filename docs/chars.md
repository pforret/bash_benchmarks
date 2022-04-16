# chars
 
> run at Sat Apr 16 22:36:46 CEST 2022
> run on macOS 12.3 arm64 Darwin
> benchmark v0.6.1
 
### cut the first 20 characters of each line: using `awk`
```
Command: 'awk {print substr($0,1,20)}'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
After : 'Lorem ipsum dolor si'
```
* Binary: /opt/homebrew/Cellar/gawk/5.1.1/bin/gawk
* Version: GNU Awk 5.1.1, API: 3.1 (GNU MPFR 4.1.0, GNU MP 6.2.1)
* Throughput speed: `552 MB/sec`
* Invocation speed: `272 ops/sec`

### cut the first 20 characters of each line: using `cut`
```
Command: 'cut -c1-20'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
After : 'Lorem ipsum dolor si'
```
* Binary: /usr/bin/cut
* Throughput speed: `56 MB/sec`
* Invocation speed: `1074 ops/sec`

### cut the first 20 characters of each line: using `gcut`
```
Command: 'gcut -c1-20'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
After : 'Lorem ipsum dolor si'
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gcut
* Version: cut (GNU coreutils) 9.1
* Throughput speed: `629 MB/sec`
* Invocation speed: `912 ops/sec`

### cut the first 20 characters of each line: using `${line:0:20}`
```
Command: '${line:0:20}'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
After : 'Lorem ipsum dolor si'
```
* Throughput speed: `9 MB/sec`
* Invocation speed: `10870 ops/sec`


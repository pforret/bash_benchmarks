# chars
 
    run at Mon Jan  2 21:53:58 CET 2023
    run on macOS 13.0.1 arm64 Darwin
    benchmark v0.6.7
    LANG = en_US.UTF-8
 
### cut the first 20 characters of each line: using `awk`
```shell
Command: 'awk {print substr($0,1,20)}'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
After : 'Lorem ipsum dolor si'
```
* Binary: `/opt/homebrew/Cellar/gawk/5.2.0/bin/gawk` (652K)
* Version: GNU Awk 5.2.0, API 3.2, (GNU MPFR 4.1.0-p13, GNU MP 6.2.1)
* Throughput speed: `299 MB/sec`
* Invocation speed: `208 ops/sec (4.82 millisec)`

### cut the first 20 characters of each line: using `cut`
```shell
Command: 'cut -c1-20'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
After : 'Lorem ipsum dolor si'
```
* Binary: `/usr/bin/cut` (20K)
* Throughput speed: `44 MB/sec`
* Invocation speed: `768 ops/sec (1.30 millisec)`

### cut the first 20 characters of each line: using `gcut`
```shell
Command: 'gcut -c1-20'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
After : 'Lorem ipsum dolor si'
```
* Binary: `/opt/homebrew/Cellar/coreutils/9.1/bin/gcut` (92K)
* Version: cut (GNU coreutils) 9.1
* Throughput speed: `581 MB/sec`
* Invocation speed: `696 ops/sec (1.44 millisec)`

### cut the first 20 characters of each line: using `${line:0:20}`
```shell
Command: '${line:0:20}'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
After : 'Lorem ipsum dolor si' (LANG = en_US.UTF-8)
```
* Throughput speed: `7 MB/sec`
* Invocation speed: `7937 ops/sec (0.13 millisec)`


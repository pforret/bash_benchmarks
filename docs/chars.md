# chars
 
    run at Mon Jan  2 21:27:33 CET 2023
    run on macOS 13.0.1 arm64 Darwin
    benchmark v0.6.7
    LANG = en_US.UTF-8
 
### cut the first 20 characters of each line: using `awk`
```shell
Command: 'awk {print substr($0,1,20)}'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
After : 'Lorem ipsum dolor si'
```
* Binary: /opt/homebrew/Cellar/gawk/5.2.0/bin/gawk (652K)
* Version: GNU Awk 5.2.0, API 3.2, (GNU MPFR 4.1.0-p13, GNU MP 6.2.1)
* Throughput speed: `298 MB/sec`
* Invocation speed: `208 ops/sec (4.80 millisec)`

### cut the first 20 characters of each line: using `cut`
```shell
Command: 'cut -c1-20'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
After : 'Lorem ipsum dolor si'
```
* Binary: /usr/bin/cut (20K)
* Throughput speed: `44 MB/sec`
* Invocation speed: `778 ops/sec (1.29 millisec)`

### cut the first 20 characters of each line: using `gcut`
```shell
Command: 'gcut -c1-20'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
After : 'Lorem ipsum dolor si'
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gcut (92K)
* Version: cut (GNU coreutils) 9.1
* Throughput speed: `592 MB/sec`
* Invocation speed: `706 ops/sec (1.42 millisec)`

### cut the first 20 characters of each line: using `${line:0:20}`
```shell
Command: '${line:0:20}'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
After : 'Lorem ipsum dolor si' (LANG = en_US.UTF-8)
```
* Throughput speed: `7 MB/sec`
* Invocation speed: `8475 ops/sec (0.12 millisec)`


# chars
 
    run at Mon Apr 18 14:46:32 CEST 2022
    run on macOS 12.3 arm64 Darwin
    benchmark v0.6.2
 
### cut the first 20 characters of each line: using `awk`
```shell
Command: 'awk {print substr($0,1,20)}'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
After : 'Lorem ipsum dolor si'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/gawk/5.1.1/bin/gawk
* Version: GNU Awk 5.1.1, API: 3.1 (GNU MPFR 4.1.0, GNU MP 6.2.1)
* Throughput speed: `328 MB/sec`
* Invocation speed: `258 ops/sec`

### cut the first 20 characters of each line: using `cut`
```shell
Command: 'cut -c1-20'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
After : 'Lorem ipsum dolor si'  (LANG = en_US.UTF-8)
```
* Binary: /usr/bin/cut
* Throughput speed: `44 MB/sec`
* Invocation speed: `820 ops/sec`

### cut the first 20 characters of each line: using `gcut`
```shell
Command: 'gcut -c1-20'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
After : 'Lorem ipsum dolor si'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gcut
* Version: cut (GNU coreutils) 9.1
* Throughput speed: `606 MB/sec`
* Invocation speed: `667 ops/sec`

### cut the first 20 characters of each line: using `${line:0:20}`
```shell
Command: '${line:0:20}'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
After : 'Lorem ipsum dolor si' (LANG = C)
```
* Throughput speed: `8 MB/sec`
* Invocation speed: `9174 ops/sec`


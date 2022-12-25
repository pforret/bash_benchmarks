# chars
 
    run at Sat Dec 24 06:23:12 PM CET 2022
    run on Ubuntu 22.04 x86_64 Linux
    benchmark v0.6.4
 
### cut the first 20 characters of each line: using `awk`
    (LANG = en_US.UTF-8)
```shell
Command: 'awk {print substr($0,1,20)}'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
After : 'Lorem ipsum dolor si'
```
* Binary: /usr/bin/gawk
* Version: GNU Awk 5.1.0, API: 3.0 (GNU MPFR 4.1.0, GNU MP 6.2.1)
* Throughput speed: `467 MB/sec`
* Invocation speed: `1058 ops/sec (0.94 millisec)`

### cut the first 20 characters of each line: using `cut`
    (LANG = en_US.UTF-8)
```shell
Command: 'cut -c1-20'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
After : 'Lorem ipsum dolor si'
```
* Binary: /usr/bin/cut
* Version: cut (GNU coreutils) 8.32
* Throughput speed: `725 MB/sec`
* Invocation speed: `1845 ops/sec (0.54 millisec)`

### cut the first 20 characters of each line: using `gcut`
    (LANG = en_US.UTF-8)
```shell
Command: 'gcut -c1-20'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
After : ''
```
* Binary: 
* Throughput speed: `214 MB/sec`
* Invocation speed: `21 ops/sec (47.34 millisec)`

### cut the first 20 characters of each line: using `${line:0:20}`
    (LANG = en_US.UTF-8)
```shell
Command: '${line:0:20}'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
After : 'Lorem ipsum dolor si' (LANG = en_US.UTF-8)
```
* Throughput speed: `20 MB/sec`
* Invocation speed: `5495 ops/sec (0.18 millisec)`


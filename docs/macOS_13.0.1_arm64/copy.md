# copy
 
    run at Sun Jan  1 16:43:36 CET 2023
    run on macOS 13.0.1 arm64 Darwin
    benchmark v0.6.6
    LANG = en_US.UTF-8
 
### Just copy from stdin to stdout: using `awk`
```shell
Command: 'awk {print;}'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Binary: /opt/homebrew/Cellar/gawk/5.2.0/bin/gawk (652K)
* Version: GNU Awk 5.2.0, API 3.2, (GNU MPFR 4.1.0-p13, GNU MP 6.2.1)
* Throughput speed: `532 MB/sec`
* Invocation speed: `210 ops/sec (4.77 millisec)`

### Just copy from stdin to stdout: using `cat`
```shell
Command: 'cat'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Binary: /bin/cat (16K)
* Throughput speed: `3226 MB/sec`
* Invocation speed: `814 ops/sec (1.23 millisec)`

### Just copy from stdin to stdout: using `gcat`
```shell
Command: 'gcat'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gcat (92K)
* Version: cat (GNU coreutils) 9.1
* Throughput speed: `2857 MB/sec`
* Invocation speed: `695 ops/sec (1.44 millisec)`

### Just copy from stdin to stdout: using `tr`
```shell
Command: 'tr a a'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Binary: /usr/bin/tr (24K)
* Throughput speed: `25 MB/sec`
* Invocation speed: `776 ops/sec (1.29 millisec)`

### Just copy from stdin to stdout: using `gtr`
```shell
Command: 'gtr a a'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gtr (112K)
* Version: tr (GNU coreutils) 9.1
* Throughput speed: `847 MB/sec`
* Invocation speed: `708 ops/sec (1.41 millisec)`

### Just copy from stdin to stdout: using `sed`
```shell
Command: 'sed s/a/a/'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Binary: /usr/bin/sed (44K)
* Throughput speed: `585 MB/sec`
* Invocation speed: `899 ops/sec (1.11 millisec)`

### Just copy from stdin to stdout: using `${line}`
```shell
Command: '${line}'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   ' (LANG = en_US.UTF-8)
```
* Throughput speed: `7 MB/sec`
* Invocation speed: `7299 ops/sec (0.14 millisec)`


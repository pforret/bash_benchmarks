# copy
 
    run at Mon Jan  2 21:27:54 CET 2023
    run on macOS 13.0.1 arm64 Darwin
    benchmark v0.6.7
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
* Invocation speed: `209 ops/sec (4.78 millisec)`

### Just copy from stdin to stdout: using `cat`
```shell
Command: 'cat'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Binary: /bin/cat (16K)
* Throughput speed: `3125 MB/sec`
* Invocation speed: `839 ops/sec (1.19 millisec)`

### Just copy from stdin to stdout: using `gcat`
```shell
Command: 'gcat'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gcat (92K)
* Version: cat (GNU coreutils) 9.1
* Throughput speed: `2941 MB/sec`
* Invocation speed: `691 ops/sec (1.45 millisec)`

### Just copy from stdin to stdout: using `tr`
```shell
Command: 'tr a a'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Binary: /usr/bin/tr (24K)
* Throughput speed: `25 MB/sec`
* Invocation speed: `761 ops/sec (1.31 millisec)`

### Just copy from stdin to stdout: using `sed`
```shell
Command: 'sed s/a/a/'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Binary: /usr/bin/sed (44K)
* Throughput speed: `581 MB/sec`
* Invocation speed: `893 ops/sec (1.12 millisec)`

### Just copy from stdin to stdout: using `${line}`
```shell
Command: '${line}'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   ' (LANG = en_US.UTF-8)
```
* Throughput speed: `8 MB/sec`
* Invocation speed: `7576 ops/sec (0.13 millisec)`


# copy
 
    run at Sat Dec 24 06:24:09 PM CET 2022
    run on Ubuntu 22.04 x86_64 Linux
    benchmark v0.6.4
 
### Just opy from stdin to stdout: using `awk`
    (LANG = en_US.UTF-8)
```shell
Command: 'awk {print;}'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Binary: /usr/bin/gawk
* Version: GNU Awk 5.1.0, API: 3.0 (GNU MPFR 4.1.0, GNU MP 6.2.1)
* Throughput speed: `1087 MB/sec`
* Invocation speed: `1058 ops/sec (0.94 millisec)`

### Just opy from stdin to stdout: using `cat`
    (LANG = en_US.UTF-8)
```shell
Command: 'cat'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Binary: /usr/bin/cat
* Version: cat (GNU coreutils) 8.32
* Throughput speed: `4348 MB/sec`
* Invocation speed: `1862 ops/sec (0.54 millisec)`

### Just opy from stdin to stdout: using `gcat`
    (LANG = en_US.UTF-8)
```shell
Command: 'gcat'
Before: 'Lorem îpsûm 1 2 3   '
After : ''
```
* Binary: 
* Throughput speed: `191 MB/sec`
* Invocation speed: `21 ops/sec (48.02 millisec)`

### Just opy from stdin to stdout: using `tr`
    (LANG = en_US.UTF-8)
```shell
Command: 'tr a a'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Binary: /usr/bin/tr
* Version: tr (GNU coreutils) 8.32
* Throughput speed: `1887 MB/sec`
* Invocation speed: `1689 ops/sec (0.59 millisec)`

### Just opy from stdin to stdout: using `gtr`
    (LANG = en_US.UTF-8)
```shell
Command: 'gtr a a'
Before: 'Lorem îpsûm 1 2 3   '
After : ''
```
* Binary: 
* Throughput speed: `205 MB/sec`
* Invocation speed: `21 ops/sec (47.88 millisec)`

### Just opy from stdin to stdout: using `sed`
    (LANG = en_US.UTF-8)
```shell
Command: 'sed s/a/a/'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Binary: /usr/bin/sed
* Version: /usr/bin/sed (GNU sed) 4.8
* Throughput speed: `694 MB/sec`
* Invocation speed: `1529 ops/sec (0.65 millisec)`

### Just opy from stdin to stdout: using `${line}`
    (LANG = en_US.UTF-8)
```shell
Command: '${line}'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   ' (LANG = en_US.UTF-8)
```
* Throughput speed: `19 MB/sec`
* Invocation speed: `383 ops/sec (2.61 millisec)`


# copy
 
    run at Fri Dec 23 09:56:34 PM CET 2022
    run on Ubuntu 22.04 x86_64 Linux
    benchmark v0.6.3
 
### Just opy from stdin to stdout: using `awk`
```shell
Command: 'awk {print;}'
Before: 'Lorem îpsûm 1 2 3   '
### Just opy from stdin to stdout: using `cat`
```shell
Command: 'cat'
Before: 'Lorem îpsûm 1 2 3   '
### Just opy from stdin to stdout: using `gcat`
```shell
Command: 'gcat'
Before: 'Lorem îpsûm 1 2 3   '
### Just opy from stdin to stdout: using `tr`
```shell
Command: 'tr a a'
Before: 'Lorem îpsûm 1 2 3   '
### Just opy from stdin to stdout: using `gtr`
```shell
Command: 'gtr a a'
Before: 'Lorem îpsûm 1 2 3   '
### Just opy from stdin to stdout: using `sed`
```shell
Command: 'sed s/a/a/'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '  (LANG = C)
```
* Binary: /usr/bin/sed
* Version: /usr/bin/sed (GNU sed) 4.8
* Throughput speed: `690 MB/sec`
* Invocation speed: `1433 ops/sec`

### Just opy from stdin to stdout: using `${line}`
```shell
Command: '${line}'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   ' (LANG = en_US.UTF-8)
```
* Throughput speed: `21 MB/sec`
* Invocation speed: `789 ops/sec`


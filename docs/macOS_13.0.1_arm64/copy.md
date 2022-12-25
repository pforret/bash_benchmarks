# copy
 
    run at Sun Dec 25 19:43:02 CET 2022
    run on macOS 13.0.1 arm64 Darwin
    benchmark v0.6.5
    LANG = en_US.UTF-8
 
### Just opy from stdin to stdout: using `awk`
```shell
Command: 'awk {print;}'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Binary: /opt/homebrew/Cellar/gawk/5.2.0/bin/gawk
* Version: GNU Awk 5.2.0, API 3.2, (GNU MPFR 4.1.0-p13, GNU MP 6.2.1)
* Throughput speed: `526 MB/sec`
* Invocation speed: `216 ops/sec (4.64 millisec)`

### Just opy from stdin to stdout: using `cat`
```shell
Command: 'cat'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Binary: /bin/cat
* Throughput speed: `3226 MB/sec`
* Invocation speed: `840 ops/sec (1.19 millisec)`

### Just opy from stdin to stdout: using `gcat`
```shell
Command: 'gcat'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gcat
* Version: cat (GNU coreutils) 9.1
* Throughput speed: `2941 MB/sec`
* Invocation speed: `702 ops/sec (1.42 millisec)`

### Just opy from stdin to stdout: using `tr`
```shell
Command: 'tr a a'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Binary: /usr/bin/tr
* Throughput speed: `25 MB/sec`
* Invocation speed: `776 ops/sec (1.29 millisec)`

### Just opy from stdin to stdout: using `gtr`
```shell
Command: 'gtr a a'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gtr
* Version: tr (GNU coreutils) 9.1
* Throughput speed: `833 MB/sec`
* Invocation speed: `708 ops/sec (1.41 millisec)`

### Just opy from stdin to stdout: using `sed`
```shell
Command: 'sed s/a/a/'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Binary: /usr/bin/sed
* Throughput speed: `595 MB/sec`
* Invocation speed: `902 ops/sec (1.11 millisec)`

### Just opy from stdin to stdout: using `${line}`
```shell
Command: '${line}'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   ' (LANG = en_US.UTF-8)
```
* Throughput speed: `8 MB/sec`
* Invocation speed: `8065 ops/sec (0.12 millisec)`


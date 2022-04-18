# copy
 
    run at Mon Apr 18 14:46:55 CEST 2022
    run on macOS 12.3 arm64 Darwin
    benchmark v0.6.2
 
### Just opy from stdin to stdout: using `awk`
```shell
Command: 'awk {print;}'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/gawk/5.1.1/bin/gawk
* Version: GNU Awk 5.1.1, API: 3.1 (GNU MPFR 4.1.0, GNU MP 6.2.1)
* Throughput speed: `610 MB/sec`
* Invocation speed: `206 ops/sec`

### Just opy from stdin to stdout: using `cat`
```shell
Command: 'cat'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '  (LANG = en_US.UTF-8)
```
* Binary: /bin/cat
* Throughput speed: `3571 MB/sec`
* Invocation speed: `939 ops/sec`

### Just opy from stdin to stdout: using `gcat`
```shell
Command: 'gcat'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gcat
* Version: cat (GNU coreutils) 9.1
* Throughput speed: `3333 MB/sec`
* Invocation speed: `740 ops/sec`

### Just opy from stdin to stdout: using `tr`
```shell
Command: 'tr a a'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '  (LANG = en_US.UTF-8)
```
* Binary: /usr/bin/tr
* Throughput speed: `25 MB/sec`
* Invocation speed: `840 ops/sec`

### Just opy from stdin to stdout: using `gtr`
```shell
Command: 'gtr a a'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gtr
* Version: tr (GNU coreutils) 9.1
* Throughput speed: `990 MB/sec`
* Invocation speed: `779 ops/sec`

### Just opy from stdin to stdout: using `sed`
```shell
Command: 'sed s/a/a/'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '  (LANG = C)
```
* Binary: /usr/bin/sed
* Throughput speed: `585 MB/sec`
* Invocation speed: `992 ops/sec`

### Just opy from stdin to stdout: using `${line}`
```shell
Command: '${line}'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   ' (LANG = C)
```
* Throughput speed: `9 MB/sec`
* Invocation speed: `9174 ops/sec`


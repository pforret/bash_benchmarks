# copy
 
> run at Sat Apr 16 22:30:28 CEST 2022
> run on macOS 12.3 arm64 Darwin (v0.6.1)
 
### Just opy from stdin to stdout: using `awk`
```
Command: 'awk {print;}'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Binary: /opt/homebrew/Cellar/gawk/5.1.1/bin/gawk
* Version: GNU Awk 5.1.1, API: 3.1 (GNU MPFR 4.1.0, GNU MP 6.2.1)
* Throughput speed: `662 MB/sec`
* Invocation speed: `271 ops/sec`

### Just opy from stdin to stdout: using `cat`
```
Command: 'cat'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Binary: /bin/cat
* Version: /bin/cat: illegal option -- -
* Throughput speed: `3704 MB/sec`
* Invocation speed: `1080 ops/sec`

### Just opy from stdin to stdout: using `gcat`
```
Command: 'gcat'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gcat
* Version: cat (GNU coreutils) 9.1
* Throughput speed: `3571 MB/sec`
* Invocation speed: `901 ops/sec`

### Just opy from stdin to stdout: using `tr`
```
Command: 'tr a a'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Binary: /usr/bin/tr
* Version: /usr/bin/tr: illegal option -- -
* Throughput speed: `27 MB/sec`
* Invocation speed: `1078 ops/sec`

### Just opy from stdin to stdout: using `gtr`
```
Command: 'gtr a a'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gtr
* Version: tr (GNU coreutils) 9.1
* Throughput speed: `1053 MB/sec`
* Invocation speed: `917 ops/sec`

### Just opy from stdin to stdout: using `sed`
```
Command: 'sed s/a/a/'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Binary: /usr/bin/sed
* Version: /usr/bin/sed: illegal option -- -
* Throughput speed: `599 MB/sec`
* Invocation speed: `1067 ops/sec`

### Just opy from stdin to stdout: using `${line}`
```
Command: '${line}'
Before: 'Lorem îpsûm 1 2 3   '
After : 'Lorem îpsûm 1 2 3   '
```
* Throughput speed: `9 MB/sec`
* Invocation speed: `10000 ops/sec`


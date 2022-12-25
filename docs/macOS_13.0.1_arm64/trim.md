# trim
 
    run at Sun Dec 25 19:50:56 CET 2022
    run on macOS 13.0.1 arm64 Darwin
    benchmark v0.6.5
    LANG = en_US.UTF-8
 
### Trim leading and trailing space: using `awk`
```shell
Command: 'awk {sub(/^[ \t\r\n]+/, ""); sub(/[ \t\r\n]+$/, ""); print}'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1
And this is #2'
```
* Binary: /opt/homebrew/Cellar/gawk/5.2.0/bin/gawk
* Version: GNU Awk 5.2.0, API 3.2, (GNU MPFR 4.1.0-p13, GNU MP 6.2.1)
* Throughput speed: `290 MB/sec`
* Invocation speed: `209 ops/sec (4.79 millisec)`

### Trim leading and trailing space: using `sed`
```shell
Command: 'sed -e s/^[[:space:]]*// -e s/[[:space:]]*$//'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1
And this is #2'
```
* Binary: /usr/bin/sed
* Throughput speed: `58 MB/sec`
* Invocation speed: `935 ops/sec (1.07 millisec)`

### Trim leading and trailing space: using `xargs`
```shell
Command: 'xargs'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1 And this is #2'
```
* Binary: /usr/bin/xargs
* Throughput speed: `19 MB/sec`
* Invocation speed: `525 ops/sec (1.90 millisec)`

### Trim leading and trailing space: using `php`
```shell
Command: 'php -r while($f = fgets(STDIN)){ printf("%s\n", trim($f)) ; ...'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1
And this is #2'
```
* Binary: /opt/homebrew/Cellar/php/8.2.0/bin/php
* Version: PHP 8.2.0 (cli) (built: Dec  9 2022 16:30:32) (NTS)
* Throughput speed: `199 MB/sec`
* Invocation speed: `50 ops/sec (20.01 millisec)`

### Trim leading and trailing space: using `$(line="${line#"${line%%[![:space:]]*}"}"; echo "${line%"${line##*[![:space:]]}"}")`
```shell
Command: '$(line="${line#"${line%%[![:space:]]*}"}"; echo "${line%"${l...'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1        And this is #2' (LANG = en_US.UTF-8)
```
* Throughput speed: `4 MB/sec`
* Invocation speed: `1715 ops/sec (0.58 millisec)`


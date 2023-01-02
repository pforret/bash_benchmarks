# trim
 
    run at Sun Jan  1 17:00:30 CET 2023
    run on macOS 13.0.1 arm64 Darwin
    benchmark v0.6.6
    LANG = en_US.UTF-8
 
### Trim leading and trailing space: using `awk`
```shell
Command: 'awk {sub(/^[ \t\r\n]+/, ""); sub(/[ \t\r\n]+$/, ""); print}'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1
And this is #2'
```
* Binary: /opt/homebrew/Cellar/gawk/5.2.0/bin/gawk (652K)
* Version: GNU Awk 5.2.0, API 3.2, (GNU MPFR 4.1.0-p13, GNU MP 6.2.1)
* Throughput speed: `292 MB/sec`
* Invocation speed: `211 ops/sec (4.74 millisec)`

### Trim leading and trailing space: using `sed`
```shell
Command: 'sed -e s/^[[:space:]]*// -e s/[[:space:]]*$//'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1
And this is #2'
```
* Binary: /usr/bin/sed (44K)
* Throughput speed: `58 MB/sec`
* Invocation speed: `1 ops/sec (899.36 millisec)`

### Trim leading and trailing space: using `xargs`
```shell
Command: 'xargs'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1 And this is #2'
```
* Binary: /usr/bin/xargs (24K)
* Throughput speed: `19 MB/sec`
* Invocation speed: `526 ops/sec (1.90 millisec)`

### Trim leading and trailing space: using `php`
```shell
Command: 'php -r while($f = fgets(STDIN)){ printf("%s\n", trim($f)) ; ...'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1
And this is #2'
```
* Binary: /opt/homebrew/Cellar/php/8.2.0/bin/php (15M)
* Version: PHP 8.2.0 (cli) (built: Dec  9 2022 16:30:32) (NTS)
* Throughput speed: `203 MB/sec`
* Invocation speed: `51 ops/sec (19.60 millisec)`

### Trim leading and trailing space: using `$(line="${line#"${line%%[![:space:]]*}"}"; echo "${line%"${line##*[![:space:]]}"}")`
```shell
Command: '$(line="${line#"${line%%[![:space:]]*}"}"; echo "${line%"${l...'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1        And this is #2' (LANG = en_US.UTF-8)
```
* Throughput speed: `5 MB/sec`
* Invocation speed: `1642 ops/sec (0.61 millisec)`


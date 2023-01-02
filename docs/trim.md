# trim
 
    run at Mon Jan  2 21:38:04 CET 2023
    run on macOS 13.0.1 arm64 Darwin
    benchmark v0.6.7
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
* Throughput speed: `279 MB/sec`
* Invocation speed: `202 ops/sec (4.95 millisec)`

### Trim leading and trailing space: using `sed`
```shell
Command: 'sed -e s/^[[:space:]]*// -e s/[[:space:]]*$//'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1
And this is #2'
```
* Binary: /usr/bin/sed (44K)
* Throughput speed: `57 MB/sec`
* Invocation speed: `614 ops/sec (1.63 millisec)`

### Trim leading and trailing space: using `xargs`
```shell
Command: 'xargs'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1 And this is #2'
```
* Binary: /usr/bin/xargs (24K)
* Throughput speed: `19 MB/sec`
* Invocation speed: `505 ops/sec (1.98 millisec)`

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
* Throughput speed: `195 MB/sec`
* Invocation speed: `50 ops/sec (19.86 millisec)`

### Trim leading and trailing space: using `$(line="${line#"${line%%[![:space:]]*}"}"; echo "${line%"${line##*[![:space:]]}"}")`
```shell
Command: '$(line="${line#"${line%%[![:space:]]*}"}"; echo "${line%"${l...'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1        And this is #2' (LANG = en_US.UTF-8)
```
* Throughput speed: `5 MB/sec`
* Invocation speed: `1695 ops/sec (0.59 millisec)`


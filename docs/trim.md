# trim
 
    run at Mon Apr 18 14:54:04 CEST 2022
    run on macOS 12.3 arm64 Darwin
    benchmark v0.6.2
 
### Trim leading and trailing space: using `awk`
```shell
Command: 'awk {sub(/^[ \t\r\n]+/, ""); sub(/[ \t\r\n]+$/, ""); print}'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1
And this is #2'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/gawk/5.1.1/bin/gawk
* Version: GNU Awk 5.1.1, API: 3.1 (GNU MPFR 4.1.0, GNU MP 6.2.1)
* Throughput speed: `312 MB/sec`
* Invocation speed: `257 ops/sec`

### Trim leading and trailing space: using `sed`
```shell
Command: 'sed -e s/^[[:space:]]*// -e s/[[:space:]]*$//'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1
And this is #2'  (LANG = C)
```
* Binary: /usr/bin/sed
* Throughput speed: `59 MB/sec`
* Invocation speed: `1049 ops/sec`

### Trim leading and trailing space: using `xargs`
```shell
Command: 'xargs'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1 And this is #2'  (LANG = en_US.UTF-8)
```
* Binary: /usr/bin/xargs
* Throughput speed: `21 MB/sec`
* Invocation speed: `620 ops/sec`

### Trim leading and trailing space: using `php`
```shell
Command: 'php -r while($f = fgets(STDIN)){ printf("%s\n", trim($f)) ; ...'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1
And this is #2'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/php/8.1.4/bin/php
* Version: PHP 8.1.4 (cli) (built: Mar 18 2022 09:32:37) (NTS)
* Throughput speed: `259 MB/sec`
* Invocation speed: `58 ops/sec`

### Trim leading and trailing space: using `$(line="${line#"${line%%[![:space:]]*}"}"; echo "${line%"${line##*[![:space:]]}"}")`
```shell
Command: '$(line="${line#"${line%%[![:space:]]*}"}"; echo "${line%"${l...'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1        And this is #2' (LANG = C)
```
* Throughput speed: `5 MB/sec`
* Invocation speed: `1783 ops/sec`


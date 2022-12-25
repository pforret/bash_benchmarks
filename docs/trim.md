# trim
 
    run at Sat Dec 24 06:40:09 PM CET 2022
    run on Ubuntu 22.04 x86_64 Linux
    benchmark v0.6.4
 
### Trim leading and trailing space: using `awk`
    (LANG = en_US.UTF-8)
```shell
Command: 'awk {sub(/^[ \t\r\n]+/, ""); sub(/[ \t\r\n]+$/, ""); print}'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1
And this is #2'
```
* Binary: /usr/bin/gawk
* Version: GNU Awk 5.1.0, API: 3.0 (GNU MPFR 4.1.0, GNU MP 6.2.1)
* Throughput speed: `313 MB/sec`
* Invocation speed: `927 ops/sec (1.08 millisec)`

### Trim leading and trailing space: using `sed`
    (LANG = en_US.UTF-8)
```shell
Command: 'sed -e s/^[[:space:]]*// -e s/[[:space:]]*$//'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1
And this is #2'
```
* Binary: /usr/bin/sed
* Version: /usr/bin/sed (GNU sed) 4.8
* Throughput speed: `40 MB/sec`
* Invocation speed: `1225 ops/sec (0.82 millisec)`

### Trim leading and trailing space: using `xargs`
    (LANG = en_US.UTF-8)
```shell
Command: 'xargs'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1 And this is #2'
```
* Binary: /usr/bin/xargs
* Version: xargs (GNU findutils) 4.8.0
* Throughput speed: `44 MB/sec`
* Invocation speed: `775 ops/sec (1.29 millisec)`

### Trim leading and trailing space: using `php`
    (LANG = en_US.UTF-8)
```shell
Command: 'php -r while($f = fgets(STDIN)){ printf("%s\n", trim($f)) ; ...'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1
And this is #2'
```
* Binary: /usr/bin/php8.2
* Version: PHP 8.2.0 (cli) (built: Dec 10 2022 10:53:01) (NTS)
* Throughput speed: `420 MB/sec`
* Invocation speed: `85 ops/sec (11.82 millisec)`

### Trim leading and trailing space: using `$(line="${line#"${line%%[![:space:]]*}"}"; echo "${line%"${line##*[![:space:]]}"}")`
    (LANG = en_US.UTF-8)
```shell
Command: '$(line="${line#"${line%%[![:space:]]*}"}"; echo "${line%"${l...'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1        And this is #2' (LANG = en_US.UTF-8)
```
* Throughput speed: `0 MB/sec`
* Invocation speed: `310 ops/sec (3.22 millisec)`


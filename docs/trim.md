# trim
 
> run at Sat Apr 16 22:19:45 CEST 2022 on macOS 12.3 arm64 Darwin (v0.6.0)
 
### Trim leading and trailing space: using `awk`
```
Command: 'awk {sub(/^[ \t\r\n]+/, ""); sub(/[ \t\r\n]+$/, ""); print}'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1
And this is #2'
```
* Binary: __/opt/homebrew/Cellar/gawk/5.1.1/bin/gawk__
* Throughput speed: `310 MB/sec`
* Invocation speed: `272 ops/sec`

### Trim leading and trailing space: using `sed`
```
Command: 'sed -e s/^[[:space:]]*// -e s/[[:space:]]*$//'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1
And this is #2'
```
* Binary: __/usr/bin/sed__
* Throughput speed: `58 MB/sec`
* Invocation speed: `1007 ops/sec`

### Trim leading and trailing space: using `xargs`
```
Command: 'xargs'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1 And this is #2'
```
* Binary: __/usr/bin/xargs__
* Throughput speed: `20 MB/sec`
* Invocation speed: `655 ops/sec`

### Trim leading and trailing space: using `php`
```
Command: 'php -r while($f = fgets(STDIN)){ printf("%s\n", trim($f)) ; ...'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1
And this is #2'
```
* Binary: __/opt/homebrew/Cellar/php/8.1.4/bin/php__
* Throughput speed: `258 MB/sec`
* Invocation speed: `55 ops/sec`

### Trim leading and trailing space: using `$(line="${line#"${line%%[![:space:]]*}"}"; echo "${line%"${line##*[![:space:]]}"}")`
```
Command: '$(line="${line#"${line%%[![:space:]]*}"}"; echo "${line%"${l...'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1        And this is #2'
```
* Throughput speed: `5 MB/sec`
* Invocation speed: `1859 ops/sec`


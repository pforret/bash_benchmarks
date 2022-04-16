# trim
 
> run at Sat Apr  9 22:48:07 CEST 2022 on macOS 12.3 arm64 Darwin (v0.5.9)
 
### Trim leading and trailing space: using `awk`
```
Command: 'awk {sub(/^[ \t\r\n]+/, ""); sub(/[ \t\r\n]+$/, ""); print}'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1
And this is #2'
```
* Throughput speed: `313 MB/sec`
* Invocation speed: `253 ops/sec`

### Trim leading and trailing space: using `sed`
```
Command: 'sed -e s/^[[:space:]]*// -e s/[[:space:]]*$//'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1
And this is #2'
```
* Throughput speed: `56 MB/sec`
* Invocation speed: `907 ops/sec`

### Trim leading and trailing space: using `xargs`
```
Command: 'xargs'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1 And this is #2'
```
* Throughput speed: `21 MB/sec`
* Invocation speed: `644 ops/sec`

### Trim leading and trailing space: using `php`
```
Command: 'php -r while($f = fgets(STDIN)){ printf("%s\n", trim($f)) ; ...'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1
And this is #2'
```
* Throughput speed: `266 MB/sec`
* Invocation speed: `58 ops/sec`

### Trim leading and trailing space: using `$(line="${line#"${line%%[![:space:]]*}"}"; echo "${line%"${line##*[![:space:]]}"}")`
```
Command: '$(line="${line#"${line%%[![:space:]]*}"}"; echo "${line%"${l...'
Before: '   This is sentence #1
       And this is #2    '
After : 'This is sentence #1        And this is #2'
```
* Throughput speed: `5 MB/sec`
* Invocation speed: `1650 ops/sec`


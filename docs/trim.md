# trim
 
> run at Sat Apr  9 14:13:08 CEST 2022 on macOS 12.3 arm64 Darwin (v0.5.9)
 
### Trim leading and trailing space: using `awk`
```
Command: 'awk {sub(/^[ \t\r\n]+/, ""); sub(/[ \t\r\n]+$/, ""); print}'
Result: '    ( Lorem ipsum dolor sit amet )   ' => '( Lorem ipsum dolor sit amet )'
```
* Throughput speed: `313 MB/sec`
* Invocation speed: `254 ops/sec`

### Trim leading and trailing space: using `sed`
```
Command: 'sed -e s/^[[:space:]]*// -e s/[[:space:]]*$//'
Result: '    ( Lorem ipsum dolor sit amet )   ' => '( Lorem ipsum dolor sit amet )'
```
* Throughput speed: `56 MB/sec`
* Invocation speed: `903 ops/sec`

### Trim leading and trailing space: using `xargs`
```
Command: 'xargs'
Result: '    ( Lorem ipsum dolor sit amet )   ' => '( Lorem ipsum dolor sit amet )'
```
* Throughput speed: `21 MB/sec`
* Invocation speed: `626 ops/sec`

### Trim leading and trailing space: using `php`
```
Command: 'php -r while($f = fgets(STDIN)){ print trim($f); }'
Result: '    ( Lorem ipsum dolor sit amet )   ' => '( Lorem ipsum dolor sit amet )'
```
* Throughput speed: `279 MB/sec`
* Invocation speed: `59 ops/sec`

### Trim leading and trailing space: using `${line#"${line%%[![:space:]]*}"}`
```
Command: '${line#"${line%%[![:space:]]*}"}'
Result: '    ( Lorem ipsum dolor sit amet )   ' => '( Lorem ipsum dolor sit amet )   '
```
* Throughput speed: `5 MB/sec`
* Invocation speed: `8929 ops/sec`


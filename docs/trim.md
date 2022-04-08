# trim
 
> run at Fri Apr  8 20:43:09 CEST 2022 on macOS 12.3 arm64 Darwin (v0.5.7)
 
### Trim leading and trailing space: using `awk`
```
Command: 'awk {sub(/^[ \t\r\n]+/, ""); sub(/[ \t\r\n]+$/, ""); print}'
Result: '    ( Lorem ipsum dolor sit amet )   ' => '( Lorem ipsum dolor sit amet )'
```
* Throughput speed: `313 MB/sec`
* Invocation speed: `255 ops/sec`

### Trim leading and trailing space: using `sed`
```
Command: 'sed -e s/^[[:space:]]*// -e s/[[:space:]]*$//'
Result: '    ( Lorem ipsum dolor sit amet )   ' => '( Lorem ipsum dolor sit amet )'
```
* Throughput speed: `56 MB/sec`
* Invocation speed: `911 ops/sec`

### Trim leading and trailing space: using `xargs`
```
Command: 'xargs'
Result: '    ( Lorem ipsum dolor sit amet )   ' => '( Lorem ipsum dolor sit amet )'
```
* Throughput speed: `21 MB/sec`
* Invocation speed: `620 ops/sec`


# trim
 
> run at Thu Apr  7 01:15:41 CEST 2022 on macOS 12.3 arm64 Darwin
 
### Trim leading and trailing space: using `awk`
```
Command: 'awk {sub(/^[ \t\r\n]+/, ""); sub(/[ \t\r\n]+$/, ""); print}'
Result: '    ( Lorem ipsum dolor sit amet )   ' => '( Lorem ipsum dolor sit amet )'
```
* Throughput speed: `100.0 MB/s`
* Invocation speed: `256 ops/sec`

### Trim leading and trailing space: using `sed`
```
Command: 'sed -e s/^[[:space:]]*// -e s/[[:space:]]*$//'
Result: '    ( Lorem ipsum dolor sit amet )   ' => '( Lorem ipsum dolor sit amet )'
```
* Throughput speed: `12.2 MB/s`
* Invocation speed: `911 ops/sec`

### Trim leading and trailing space: using `xargs`
```
Command: 'xargs'
Result: '    ( Lorem ipsum dolor sit amet )   ' => '( Lorem ipsum dolor sit amet )'
```
* Throughput speed: `4.3 MB/s`
* Invocation speed: `620 ops/sec`


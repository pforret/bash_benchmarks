# trim
 
> run at Thu Apr  7 22:02:28 CEST 2022 on macOS 12.3 arm64 Darwin
 
### Trim leading and trailing space: using `awk`
```
Command: 'awk {sub(/^[ \t\r\n]+/, ""); sub(/[ \t\r\n]+$/, ""); print}'
Result: '    ( Lorem ipsum dolor sit amet )   ' => '( Lorem ipsum dolor sit amet )'
```
* Throughput speed: `312.50 MB/sec`
* Invocation speed: `241 ops/sec`

### Trim leading and trailing space: using `sed`
```
Command: 'sed -e s/^[[:space:]]*// -e s/[[:space:]]*$//'
Result: '    ( Lorem ipsum dolor sit amet )   ' => '( Lorem ipsum dolor sit amet )'
```
* Throughput speed: `54.35 MB/sec`
* Invocation speed: `689 ops/sec`

### Trim leading and trailing space: using `xargs`
```
Command: 'xargs'
Result: '    ( Lorem ipsum dolor sit amet )   ' => '( Lorem ipsum dolor sit amet )'
```
* Throughput speed: `20.33 MB/sec`
* Invocation speed: `605 ops/sec`


# alpha
 
> run at Sat Apr 16 22:12:21 CEST 2022 on macOS 12.3 arm64 Darwin (v0.6.0)
 
### remove non-alphanumeric characters: using `${line//[^a-zA-Z0-9]/-}`
```
Command: '${line//[^a-zA-Z0-9]/-}'
Before: 'Winter was the first! to? été     [go]'
After : 'Winter-was-the-first--to----t--------go-'
```
* Throughput speed: `8 MB/sec`
* Invocation speed: `9091 ops/sec`

### remove non-alphanumeric characters: using `awk`
```
Command: 'awk {gsub(/[^0-9a-zA-Z .-]/,""); gsub(/[ ]+/,"-"); print;}'
Before: 'Winter was the first! to? été     [go]'
After : 'Winter-was-the-first-to-t-go'
```
* Binary: __/opt/homebrew/Cellar/gawk/5.1.1/bin/gawk__
* Throughput speed: `109 MB/sec`
* Invocation speed: `233 ops/sec`

### remove non-alphanumeric characters: using `sed`
```
Command: 'sed -e s/[^0-9a-zA-Z .-]*//g -e s/ */-/g'
Before: 'Winter was the first! to? été     [go]'
After : 'Winter-was-the-first-to-t-go'
```
* Binary: __/usr/bin/sed__
* Throughput speed: 
# alpha
 
> run at Fri Apr  8 20:40:07 CEST 2022 on macOS 12.3 arm64 Darwin (v0.5.7)
 
### remove non-alphanumeric characters: using `awk`
```
Command: 'awk {gsub(/[^0-9a-zA-Z .-]/,""); print;}'
Result: '^1-2'3,4,5_6°8@9&0 (one){two}[three]' => '1-23456890 onetwothree'
```
* Throughput speed: `98 MB/sec`
* Invocation speed: `228 ops/sec`

### remove non-alphanumeric characters: using `sed`
```
Command: 'sed s/[^0-9a-zA-Z .-]*//g'
Result: '^1-2'3,4,5_6°8@9&0 (one){two}[three]' => '1-23456890 onetwothree'
```
* Throughput speed: `9 MB/sec`
* Invocation speed: `893 ops/sec`

### remove non-alphanumeric characters: using `sed`
```
Command: 'sed s/[^0-9a-zA-Z .-]//g'
Result: '^1-2'3,4,5_6°8@9&0 (one){two}[three]' => '1-23456890 onetwothree'
```
* Throughput speed: `36 MB/sec`
* Invocation speed: `911 ops/sec`

### remove non-alphanumeric characters: using `tr`
```
Command: 'tr -cd 0-9a-zA-Z .-'
Result: '^1-2'3,4,5_6°8@9&0 (one){two}[three]' => '1-23456890 onetwothree'
```
* Throughput speed: `25 MB/sec`
* Invocation speed: `925 ops/sec`

### remove non-alphanumeric characters: using `tr`
```
Command: 'tr -cd [:alnum:][:blank:].-'
Result: '^1-2'3,4,5_6°8@9&0 (one){two}[three]' => '1-23456890 onetwothree'
```
* Throughput speed: `25 MB/sec`
* Invocation speed: `796 ops/sec`


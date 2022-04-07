# alpha
 
> run at Thu Apr  7 22:44:25 CEST 2022 on macOS 12.3 arm64 Darwin
 
### remove non-alphanumeric characters: using `awk`
```
Command: 'awk {gsub(/[^0-9a-zA-Z .-]/,""); print;}'
Result: '^1-2'3,4,5_6°8@9&0 (one){two}[three]' => '1-23456890 onetwothree'
```
* Throughput speed: `98.62 MB/sec`
* Invocation speed: `255 ops/sec`

### remove non-alphanumeric characters: using `sed`
```
Command: 'sed s/[^0-9a-zA-Z .-]*//g'
Result: '^1-2'3,4,5_6°8@9&0 (one){two}[three]' => '1-23456890 onetwothree'
```
* Throughput speed: `8.76 MB/sec`
* Invocation speed: `898 ops/sec`

### remove non-alphanumeric characters: using `sed`
```
Command: 'sed s/[^0-9a-zA-Z .-]//g'
Result: '^1-2'3,4,5_6°8@9&0 (one){two}[three]' => '1-23456890 onetwothree'
```
* Throughput speed: `35.73 MB/sec`
* Invocation speed: `905 ops/sec`

### remove non-alphanumeric characters: using `tr`
```
Command: 'tr -cd 0-9a-zA-Z .-'
Result: '^1-2'3,4,5_6°8@9&0 (one){two}[three]' => '1-23456890 onetwothree'
```
* Throughput speed: `25.36 MB/sec`
* Invocation speed: `928 ops/sec`

### remove non-alphanumeric characters: using `tr`
```
Command: 'tr -cd [:alnum:][:blank:].-'
Result: '^1-2'3,4,5_6°8@9&0 (one){two}[three]' => '1-23456890 onetwothree'
```
* Throughput speed: `25.36 MB/sec`
* Invocation speed: `790 ops/sec`


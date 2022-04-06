# alpha
 
> run at Thu Apr  7 01:14:52 CEST 2022 on macOS 12.3 arm64 Darwin
 
### remove non-alphanumeric characters: using `awk`
```
Command: 'awk {gsub(/[^0-9a-zA-Z .-]*/,""); print;}'
Result: '^1-2'3,4,5_6°8@9&0 (one){two}[three]' => '1-23456890 onetwothree'
```
* Throughput speed: `1.4 MB/s`
* Invocation speed: `255 ops/sec`

### remove non-alphanumeric characters: using `sed`
```
Command: 'sed s/[^0-9a-zA-Z .-]*//g'
Result: '^1-2'3,4,5_6°8@9&0 (one){two}[three]' => '1-23456890 onetwothree'
```
* Throughput speed: `1.8 MB/s`
* Invocation speed: `903 ops/sec`

### remove non-alphanumeric characters: using `sed`
```
Command: 'sed s/[^0-9a-zA-Z .-]//g'
Result: '^1-2'3,4,5_6°8@9&0 (one){two}[three]' => '1-23456890 onetwothree'
```
* Throughput speed: `7.6 MB/s`
* Invocation speed: `914 ops/sec`

### remove non-alphanumeric characters: using `tr`
```
Command: 'tr -cd 0-9a-zA-Z .-'
Result: '^1-2'3,4,5_6°8@9&0 (one){two}[three]' => '1-23456890 onetwothree'
```
* Throughput speed: `5.3 MB/s`
* Invocation speed: `924 ops/sec`

### remove non-alphanumeric characters: using `tr`
```
Command: 'tr -cd [:alnum:][:blank:].-'
Result: '^1-2'3,4,5_6°8@9&0 (one){two}[three]' => '1-23456890 onetwothree'
```
* Throughput speed: `5.2 MB/s`
* Invocation speed: `807 ops/sec`


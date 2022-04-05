# Remove non-alphanumeric chars
 
> run at Tue Apr  5 23:30:18 CEST 2022 on Darwin 21.4.0
 
### Remove non-alphanumeric chars: using `awk`
```
Command: 'awk {gsub(/[^0-9a-zA-Z]*/,""); print;}'
Result: '/One, two & three are all :-)/' => 'Onetwothreeareall'
```
* Throughput speed: `1.4 MB/s`
* Invocation speed: `4.17 msec/op`

### Remove non-alphanumeric chars: using `awk`
```
Command: 'awk {gsub(/[^0-9a-zA-Z]/,""); print;}'
Result: '/One, two & three are all :-)/' => 'Onetwothreeareall'
```
* Throughput speed: `14.3 MB/s`
* Invocation speed: `4.17 msec/op`

### Remove non-alphanumeric chars: using `awk`
```
Command: 'awk {gsub(/[^0-9a-zA-Z ]/,""); gsub(/ /,"-"); print tolower(...'
Result: '/One, two & three are all :-)/' => 'one-two--three-are-all-'
```
* Throughput speed: `10.0 MB/s`
* Invocation speed: `4.17 msec/op`

### Remove non-alphanumeric chars: using `sed`
```
Command: 'sed s/[^0-9a-zA-Z]*//g'
Result: '/One, two & three are all :-)/' => 'Onetwothreeareall'
```
* Throughput speed: `1.8 MB/s`
* Invocation speed: `1.67 msec/op`

### Remove non-alphanumeric chars: using `sed`
```
Command: 'sed s/[^0-9a-zA-Z]//g'
Result: '/One, two & three are all :-)/' => 'Onetwothreeareall'
```
* Throughput speed: `7.0 MB/s`
* Invocation speed: `0.83 msec/op`

### Remove non-alphanumeric chars: using `tr`
```
Command: 'tr -cd 0-9a-zA-Z'
Result: '/One, two & three are all :-)/' => 'Onetwothreeareall'
```
* Throughput speed: `5.3 MB/s`
* Invocation speed: `1.67 msec/op`

### Remove non-alphanumeric chars: using `tr`
```
Command: 'tr -cd [:alnum:]'
Result: '/One, two & three are all :-)/' => 'Onetwothreeareall'
```
* Throughput speed: `5.3 MB/s`
* Invocation speed: `1.67 msec/op`


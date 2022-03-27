# Remove non-alphanumeric chars
 
> run at Sun Mar 27 19:21:56 CEST 2022 on Darwin 21.4.0
 
### Remove non-alphanumeric chars: using `awk`
```
Command: 'awk {gsub(/[^0-9a-zA-Z .-]*/,""); print;}'
Result: '/Easy like 1-2-3!![]{}()/' => 'Easy like 1-2-3'
```
* 710 msec -- 1.4 MB/s
 
### Remove non-alphanumeric chars: using `sed`
```
Command: 'sed s/[^0-9a-zA-Z .-]*//g'
Result: '/Easy like 1-2-3!![]{}()/' => 'Easy like 1-2-3'
```
* 568 msec -- 1.8 MB/s
 
### Remove non-alphanumeric chars: using `sed`
```
Command: 'sed s/[^0-9a-zA-Z .-]//g'
Result: '/Easy like 1-2-3!![]{}()/' => 'Easy like 1-2-3'
```
* 130 msec -- 7.7 MB/s
 
### Remove non-alphanumeric chars: using `tr`
```
Command: 'tr -cd 0-9a-zA-Z .-'
Result: '/Easy like 1-2-3!![]{}()/' => 'Easy like 1-2-3'
```
* 190 msec -- 5.3 MB/s
 
### Remove non-alphanumeric chars: using `tr`
```
Command: 'tr -cd [:alnum:][:blank:].-'
Result: '/Easy like 1-2-3!![]{}()/' => 'Easy like 1-2-3'
```
* 190 msec -- 5.3 MB/s
 

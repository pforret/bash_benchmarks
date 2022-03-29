# Remove non-alphanumeric chars
 
> run at Mon Mar 28 21:44:21 CEST 2022 on Darwin 21.4.0
 
### Remove non-alphanumeric chars: using `awk`
```
Command: 'awk {gsub(/[^0-9a-zA-Z]*/,""); print;}'
Result: '/One, two & three are all :-)/' => 'Onetwothreeareall'
```
* 708 msec -- 1.4 MB/s
 
### Remove non-alphanumeric chars: using `awk`
```
Command: 'awk {gsub(/[^0-9a-zA-Z]/,""); print;}'
Result: '/One, two & three are all :-)/' => 'Onetwothreeareall'
```
* 68 msec -- 14.7 MB/s
 
### Remove non-alphanumeric chars: using `awk`
```
Command: 'awk {gsub(/[^0-9a-zA-Z ]/,"");gsub(/ /,"-"); print tolower($...'
Result: '/One, two & three are all :-)/' => 'one-two--three-are-all-'
```
* 100 msec -- 10.0 MB/s
 
### Remove non-alphanumeric chars: using `sed`
```
Command: 'sed s/[^0-9a-zA-Z]*//g'
Result: '/One, two & three are all :-)/' => 'Onetwothreeareall'
```
* 568 msec -- 1.8 MB/s
 
### Remove non-alphanumeric chars: using `sed`
```
Command: 'sed s/[^0-9a-zA-Z]//g'
Result: '/One, two & three are all :-)/' => 'Onetwothreeareall'
```
* 140 msec -- 7.2 MB/s
 
### Remove non-alphanumeric chars: using `tr`
```
Command: 'tr -cd 0-9a-zA-Z'
Result: '/One, two & three are all :-)/' => 'Onetwothreeareall'
```
* 190 msec -- 5.3 MB/s
 
### Remove non-alphanumeric chars: using `tr`
```
Command: 'tr -cd [:alnum:]'
Result: '/One, two & three are all :-)/' => 'Onetwothreeareall'
```
* 190 msec -- 5.3 MB/s
 

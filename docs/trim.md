# Trim leading and trailing spaces
 
> run at Sun Mar 27 19:22:26 CEST 2022 on Darwin 21.4.0
 
### Trim leading and trailing spaces: using `awk`
```
Command: 'awk {sub(/^[ \t\r\n]+/, ""); sub(/[ \t\r\n]+$/, ""); print}'
Result: '    Just a Test          ' => 'Just a Test'
```
* 50 msec -- 79.6 MB/s
 
### Trim leading and trailing spaces: using `sed`
```
Command: 'sed -e s/^[[:space:]]*// -e s/[[:space:]]*$//'
Result: '    Just a Test          ' => 'Just a Test'
```
* 352 msec -- 11.3 MB/s
 
### Trim leading and trailing spaces: using `xargs`
```
Command: 'xargs'
Result: '    Just a Test          ' => 'Just a Test'
```
* 944 msec -- 4.2 MB/s
 

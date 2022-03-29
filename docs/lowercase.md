# Convert to lowercase
 
> run at Tue Mar 29 14:44:21 CEST 2022 on Darwin 21.4.0
 
### Convert to lowercase: using `awk`
```
Command: 'awk {print tolower($0)}'
Result: '/UPPER lower Title ÎÑ áçtîÔŃ/' => '/upper lower title îñ áçtîôń/'
```
* 90 msec -- 22.2 MB/s
 
### Convert to lowercase: using `sed`
```
Command: 'sed y/ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏ...'
Result: '/UPPER lower Title ÎÑ áçtîÔŃ/' => '/upper lower title îñ áçtîôń/'
```
* 32 msec -- 62.5 MB/s
 
### Convert to lowercase: using `tr`
```
Command: 'tr [:upper:] [:lower:]'
Result: '/UPPER lower Title ÎÑ áçtîÔŃ/' => '/upper lower title îñ áçtîôń/'
```
* 410 msec -- 4.9 MB/s
 
### Convert to lowercase: using `bash`
```
Command: 'bash -c while read line ; do echo ${line,,} ; done'
Result: '/UPPER lower Title ÎÑ áçtîÔŃ/' => '/upper lower title îñ áçtîôń/'
```
* 1030 msec -- 1.9 MB/s
 

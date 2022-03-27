# Convert to lowercase
 
> run at Sun Mar 27 19:02:31 CEST 2022 on Darwin 21.4.0
 
### Convert to lowercase: using `awk`
```
Command: 'awk {print tolower($0)}'
Result: '/UPPER lower Title ÎÑ áçtîÔŃ/' => '/upper lower title îñ áçtîôń/'
```
* 84 msec -- 23.8 MB/s
 
### Convert to lowercase: using `sed`
```
Command: 'sed y/ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏ...'
Result: '/UPPER lower Title ÎÑ áçtîÔŃ/' => '/upper lower title îñ áçtîôń/'
```
* 30 msec -- 66.7 MB/s
 
### Convert to lowercase: using `tr`
```
Command: 'tr [:upper:] [:lower:]'
Result: '/UPPER lower Title ÎÑ áçtîÔŃ/' => '/upper lower title îñ áçtîôń/'
```
* 400 msec -- 5.0 MB/s
 

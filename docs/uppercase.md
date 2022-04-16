# uppercase
 
> run at Sat Apr 16 22:20:38 CEST 2022 on macOS 12.3 arm64 Darwin (v0.6.0)
 
### Convert text to uppercase: using `awk`
```
Command: 'awk {print toupper($0)}'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'łORèM îPSùM DôLõR SIT AMéT œßþ'
```
* Binary: __/opt/homebrew/Cellar/gawk/5.1.1/bin/gawk__
* Throughput speed: `169 MB/sec`
* Invocation speed: `272 ops/sec`

### Convert text to uppercase: using `sed`
```
Command: 'sed y/abcdefghijklmnopqrstuvwxyzàáâäæãåāǎçćčèéêëēėęěîïííīįìǐ...'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : ''
```
* Binary: __/usr/bin/sed__
* Throughput speed: `6250 MB/sec`
* Invocation speed: `1096 ops/sec`

### Convert text to uppercase: using `tr`
```
Command: 'tr [:lower:] [:upper:]'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'łORèM îPSùM DôLõR SIT AMéT œßþ'
```
* Binary: __/usr/bin/tr__
* Throughput speed: `27 MB/sec`
* Invocation speed: `1060 ops/sec`

### Convert text to uppercase: using `gtr`
```
Command: 'gtr [:lower:] [:upper:]'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'łORèM îPSùM DôLõR SIT AMéT œßþ'
```
* Binary: __/opt/homebrew/Cellar/coreutils/9.1/bin/gtr__
* Throughput speed: `1053 MB/sec`
* Invocation speed: `915 ops/sec`

### Convert text to uppercase: using `${line^^}`
```
Command: '${line^^}'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'łORèM îPSùM DôLõR SIT AMéT œßþ'
```
* Throughput speed: `9 MB/sec`
* Invocation speed: `9346 ops/sec`


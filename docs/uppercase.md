# uppercase
 
> run at Sat Apr 16 22:24:59 CEST 2022
> run on macOS 12.3 arm64 Darwin (v0.6.1)
 
### Convert text to uppercase: using `awk`
```
Command: 'awk {print toupper($0)}'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'łORèM îPSùM DôLõR SIT AMéT œßþ'
```
* Binary: /opt/homebrew/Cellar/gawk/5.1.1/bin/gawk
* Version: GNU Awk 5.1.1, API: 3.1 (GNU MPFR 4.1.0, GNU MP 6.2.1)
* Throughput speed: `163 MB/sec`
* Invocation speed: `270 ops/sec`

### Convert text to uppercase: using `sed`
```
Command: 'sed y/abcdefghijklmnopqrstuvwxyzàáâäæãåāǎçćčèéêëēėęěîïííīįìǐ...'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : ''
```
* Binary: /usr/bin/sed
* Version: /usr/bin/sed: illegal option -- -
* Throughput speed: `5556 MB/sec`
* Invocation speed: `1106 ops/sec`

### Convert text to uppercase: using `tr`
```
Command: 'tr [:lower:] [:upper:]'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'łORèM îPSùM DôLõR SIT AMéT œßþ'
```
* Binary: /usr/bin/tr
* Version: /usr/bin/tr: illegal option -- -
* Throughput speed: `27 MB/sec`
* Invocation speed: `1076 ops/sec`

### Convert text to uppercase: using `gtr`
```
Command: 'gtr [:lower:] [:upper:]'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'łORèM îPSùM DôLõR SIT AMéT œßþ'
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gtr
* Version: tr (GNU coreutils) 9.1
* Throughput speed: `1053 MB/sec`
* Invocation speed: `922 ops/sec`

### Convert text to uppercase: using `${line^^}`
```
Command: '${line^^}'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'łORèM îPSùM DôLõR SIT AMéT œßþ'
```
* Throughput speed: `9 MB/sec`
* Invocation speed: `9709 ops/sec`


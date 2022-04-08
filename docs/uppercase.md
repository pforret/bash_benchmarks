# uppercase
 
> run at Fri Apr  8 20:37:45 CEST 2022 on macOS 12.3 arm64 Darwin
 
### Convert text to uppercase: using `awk`
```
Command: 'awk {print toupper($0)}'
Result: 'łorèm îpsùm dôlõr sit amét œßþ' => 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
```
* Throughput speed: `97 MB/sec`
* Invocation speed: `255 ops/sec`

### Convert text to uppercase: using `sed`
```
Command: 'sed y/abcdefghijklmnopqrstuvwxyzàáâäæãåāǎçćčèéêëēėęěîïííīįìǐ...'
Result: 'łorèm îpsùm dôlõr sit amét œßþ' => 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT Œẞþ'
```
* Throughput speed: `240 MB/sec`
* Invocation speed: `923 ops/sec`

### Convert text to uppercase: using `tr`
```
Command: 'tr [:lower:] [:upper:]'
Result: 'łorèm îpsùm dôlõr sit amét œßþ' => 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
```
* Throughput speed: `25 MB/sec`
* Invocation speed: `840 ops/sec`

### Convert text to uppercase: using `${line^^}`
```
Command: '${line^^}'
Result: 'łorèm îpsùm dôlõr sit amét œßþ' => 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
```
* Throughput speed: `9 MB/sec`
* Invocation speed: `8696 ops/sec`


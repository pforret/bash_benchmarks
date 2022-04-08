# uppercase
 
> run at Fri Apr  8 20:14:56 CEST 2022 on macOS 12.3 arm64 Darwin
 
### Convert text to uppercase: using `awk`
```
Command: 'awk {print toupper($0)}'
Result: 'łorèm îpsùm dôlõr sit amét œßþ' => 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
```
* Throughput speed: `97.18 MB/sec`
* Invocation speed: `253 ops/sec`

### Convert text to uppercase: using `sed`
```
Command: 'sed y/abcdefghijklmnopqrstuvwxyzàáâäæãåāǎçćčèéêëēėęěîïííīįìǐ...'
Result: 'łorèm îpsùm dôlõr sit amét œßþ' => 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT Œẞþ'
```
* Throughput speed: `240.96 MB/sec`
* Invocation speed: `943 ops/sec`

### Convert text to uppercase: using `tr`
```
Command: 'tr [:lower:] [:upper:]'
Result: 'łorèm îpsùm dôlõr sit amét œßþ' => 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
```
* Throughput speed: `24.78 MB/sec`
* Invocation speed: `879 ops/sec`

### Convert text to uppercase: using `${line^^}`
```
Command: '${line^^}'
Result: 'łorèm îpsùm dôlõr sit amét œßþ' => 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
```
* Throughput speed: `8.30 MB/sec`
* Invocation speed: `9009 ops/sec`


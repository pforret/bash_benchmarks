# lowercase
 
> run at Fri Apr  8 20:36:36 CEST 2022 on macOS 12.3 arm64 Darwin
 
### Convert text to lowercase: using `awk`
```
Command: 'awk {print tolower($0)}'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Throughput speed: `97 MB/sec`
* Invocation speed: `240 ops/sec`

### Convert text to lowercase: using `sed`
```
Command: 'sed y/ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏ...'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'łorèm îpsùm dôlõr sit amét œßÞ'
```
* Throughput speed: `234 MB/sec`
* Invocation speed: `920 ops/sec`

### Convert text to lowercase: using `tr`
```
Command: 'tr [:upper:] [:lower:]'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Throughput speed: `25 MB/sec`
* Invocation speed: `837 ops/sec`

### Convert text to lowercase: using `${line,,}`
```
Command: '${line,,}'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Throughput speed: `9 MB/sec`
* Invocation speed: `9009 ops/sec`


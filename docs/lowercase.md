# lowercase
 
> run at Fri Apr  8 20:14:10 CEST 2022 on macOS 12.3 arm64 Darwin
 
### Convert text to lowercase: using `awk`
```
Command: 'awk {print tolower($0)}'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Throughput speed: `97.09 MB/sec`
* Invocation speed: `251 ops/sec`

### Convert text to lowercase: using `sed`
```
Command: 'sed y/ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏ...'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'łorèm îpsùm dôlõr sit amét œßÞ'
```
* Throughput speed: `236.97 MB/sec`
* Invocation speed: `943 ops/sec`

### Convert text to lowercase: using `tr`
```
Command: 'tr [:upper:] [:lower:]'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Throughput speed: `24.69 MB/sec`
* Invocation speed: `871 ops/sec`

### Convert text to lowercase: using `${line,,}`
```
Command: '${line,,}'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Throughput speed: `8.23 MB/sec`
* Invocation speed: `9091 ops/sec`


# uppercase
 
> run at Thu Apr  7 01:15:50 CEST 2022 on macOS 12.3 arm64 Darwin
 
### Convert text to uppercase: using `awk`
```
Command: 'awk {print toupper($0)}'
Result: 'łorèm îpsùm dôlõr sit amét' => 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT'
```
* Throughput speed: `20.0 MB/s`
* Invocation speed: `258 ops/sec`

### Convert text to uppercase: using `sed`
```
Command: 'sed y/abcdefghijklmnopqrstuvwxyzàáâäæãåāǎçćčèéêëēėęěîïííīįìǐ...'
Result: 'łorèm îpsùm dôlõr sit amét' => 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT'
```
* Throughput speed: `50.0 MB/s`
* Invocation speed: `908 ops/sec`

### Convert text to uppercase: using `tr`
```
Command: 'tr [:lower:] [:upper:]'
Result: 'łorèm îpsùm dôlõr sit amét' => 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT'
```
* Throughput speed: `5.0 MB/s`
* Invocation speed: `837 ops/sec`

### Convert text to uppercase: using `${line^^}`
```
Command: '${line^^}'
Result: 'łorèm îpsùm dôlõr sit amét' => 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT'
```
* Throughput speed: `1.5 MB/s`
* Invocation speed: `9174 ops/sec`


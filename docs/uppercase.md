# uppercase
 
> run at Thu Apr  7 22:02:44 CEST 2022 on macOS 12.3 arm64 Darwin
 
### Convert text to uppercase: using `awk`
```
Command: 'awk {print toupper($0)}'
Result: 'łorèm îpsùm dôlõr sit amét' => 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT'
```
* Throughput speed: `97.09 MB/sec`
* Invocation speed: `259 ops/sec`

### Convert text to uppercase: using `sed`
```
Command: 'sed y/abcdefghijklmnopqrstuvwxyzàáâäæãåāǎçćčèéêëēėęěîïííīįìǐ...'
Result: 'łorèm îpsùm dôlõr sit amét' => 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT'
```
* Throughput speed: `239.81 MB/sec`
* Invocation speed: `918 ops/sec`

### Convert text to uppercase: using `tr`
```
Command: 'tr [:lower:] [:upper:]'
Result: 'łorèm îpsùm dôlõr sit amét' => 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT'
```
* Throughput speed: `24.38 MB/sec`
* Invocation speed: `712 ops/sec`

### Convert text to uppercase: using `${line^^}`
```
Command: '${line^^}'
Result: 'łorèm îpsùm dôlõr sit amét' => 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT'
```
* Throughput speed: `8.24 MB/sec`
* Invocation speed: `9091 ops/sec`


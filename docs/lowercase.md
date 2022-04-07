# lowercase
 
> run at Thu Apr  7 22:01:21 CEST 2022 on macOS 12.3 arm64 Darwin
 
### Convert text to lowercase: using `awk`
```
Command: 'awk {print tolower($0)}'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT' => 'łorèm îpsùm dôlõr sit amét'
```
* Throughput speed: `93.90 MB/sec`
* Invocation speed: `214 ops/sec`

### Convert text to lowercase: using `sed`
```
Command: 'sed y/ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏ...'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT' => 'łorèm îpsùm dôlõr sit amét'
```
* Throughput speed: `232.56 MB/sec`
* Invocation speed: `769 ops/sec`

### Convert text to lowercase: using `tr`
```
Command: 'tr [:upper:] [:lower:]'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT' => 'łorèm îpsùm dôlõr sit amét'
```
* Throughput speed: `24.43 MB/sec`
* Invocation speed: `764 ops/sec`

### Convert text to lowercase: using `${line,,}`
```
Command: '${line,,}'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT' => 'łorèm îpsùm dôlõr sit amét'
```
* Throughput speed: `8.26 MB/sec`
* Invocation speed: `8850 ops/sec`


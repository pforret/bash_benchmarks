# lowercase
 
> run at Thu Apr  7 01:15:11 CEST 2022 on macOS 12.3 arm64 Darwin
 
### Convert text to lowercase: using `awk`
```
Command: 'awk {print tolower($0)}'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT' => 'łorèm îpsùm dôlõr sit amét'
```
* Throughput speed: `20.0 MB/s`
* Invocation speed: `256 ops/sec`

### Convert text to lowercase: using `sed`
```
Command: 'sed y/ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏ...'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT' => 'łorèm îpsùm dôlõr sit amét'
```
* Throughput speed: `50.0 MB/s`
* Invocation speed: `916 ops/sec`

### Convert text to lowercase: using `tr`
```
Command: 'tr [:upper:] [:lower:]'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT' => 'łorèm îpsùm dôlõr sit amét'
```
* Throughput speed: `5.0 MB/s`
* Invocation speed: `852 ops/sec`

### Convert text to lowercase: using `${line,,}`
```
Command: '${line,,}'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT' => 'łorèm îpsùm dôlõr sit amét'
```
* Throughput speed: `1.5 MB/s`
* Invocation speed: `8929 ops/sec`


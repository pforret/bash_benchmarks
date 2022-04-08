# lowercase
 
> run at Fri Apr  8 21:19:06 CEST 2022 on macOS 12.3 arm64 Darwin (v0.5.8)
 
### Convert text to lowercase: using `awk`
```
Command: 'awk {print tolower($0)}'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Throughput speed: `98 MB/sec`
* Invocation speed: `257 ops/sec`

### Convert text to lowercase: using `perl`
```
Command: 'perl -ne print lc'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'
```
* Throughput speed: `637 MB/sec`
* Invocation speed: `353 ops/sec`

### Convert text to lowercase: using `php`
```
Command: 'php -r while($f = fgets(STDIN)){ print strtolower($f); }'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'
```
* Throughput speed: `251 MB/sec`
* Invocation speed: `61 ops/sec`

### Convert text to lowercase: using `php`
```
Command: 'php -r while($f = fgets(STDIN)){ print mb_strtolower($f); }'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Throughput speed: `73 MB/sec`
* Invocation speed: `61 ops/sec`

### Convert text to lowercase: using `sed`
```
Command: 'sed y/ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏ...'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'łorèm îpsùm dôlõr sit amét œßÞ'
```
* Throughput speed: `239 MB/sec`
* Invocation speed: `898 ops/sec`

### Convert text to lowercase: using `tr`
```
Command: 'tr [:upper:] [:lower:]'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Throughput speed: `25 MB/sec`
* Invocation speed: `845 ops/sec`

### Convert text to lowercase: using `${line,,}`
```
Command: '${line,,}'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Throughput speed: `9 MB/sec`
* Invocation speed: `9259 ops/sec`


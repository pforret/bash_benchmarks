# lowercase
 
> run at Fri Apr  8 20:52:09 CEST 2022 on macOS 12.3 arm64 Darwin (v0.5.7)
 
### Convert text to lowercase: using `awk`
```
Command: 'awk {print tolower($0)}'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Throughput speed: `97 MB/sec`
* Invocation speed: `256 ops/sec`

### Convert text to lowercase: using `perl`
```
Command: 'perl -ne print lc'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'
```
* Throughput speed: `649 MB/sec`
* Invocation speed: `356 ops/sec`

### Convert text to lowercase: using `php`
```
Command: 'php -r while($f = fgets(STDIN)){ print strtolower($f); }'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'
```
* Throughput speed: `250 MB/sec`
* Invocation speed: `60 ops/sec`

### Convert text to lowercase: using `sed`
```
Command: 'sed y/ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏ...'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'łorèm îpsùm dôlõr sit amét œßÞ'
```
* Throughput speed: `239 MB/sec`
* Invocation speed: `900 ops/sec`

### Convert text to lowercase: using `tr`
```
Command: 'tr [:upper:] [:lower:]'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Throughput speed: `25 MB/sec`
* Invocation speed: `800 ops/sec`

### Convert text to lowercase: using `${line,,}`
```
Command: '${line,,}'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Throughput speed: `9 MB/sec`
* Invocation speed: `9174 ops/sec`


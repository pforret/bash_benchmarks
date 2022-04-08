# lowercase
 
> run at Fri Apr  8 21:27:42 CEST 2022 on macOS 12.3 arm64 Darwin (v0.5.9)
 
### Convert text to lowercase: using `awk`
```
Command: 'awk {print tolower($0)}'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Throughput speed: `98 MB/sec`
* Invocation speed: `258 ops/sec`

### Convert text to lowercase: using `perl`
```
Command: 'perl -ne print lc'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'
```
* Throughput speed: `645 MB/sec`
* Invocation speed: `356 ops/sec`

### Convert text to lowercase: using `perl`
```
Command: 'perl -CSA -ne use utf8; binmode STDOUT, ":utf8"; print lc'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Throughput speed: `98 MB/sec`
* Invocation speed: `341 ops/sec`

### Convert text to lowercase: using `php`
```
Command: 'php -r while($f = fgets(STDIN)){ print strtolower($f); }'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'
```
* Throughput speed: `249 MB/sec`
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
* Throughput speed: `241 MB/sec`
* Invocation speed: `909 ops/sec`

### Convert text to lowercase: using `tr`
```
Command: 'tr [:upper:] [:lower:]'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Throughput speed: `25 MB/sec`
* Invocation speed: `844 ops/sec`

### Convert text to lowercase: using `${line,,}`
```
Command: '${line,,}'
Result: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' => 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Throughput speed: `9 MB/sec`
* Invocation speed: `9091 ops/sec`


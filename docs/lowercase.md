# lowercase
 
> run at Sat Apr 16 22:13:13 CEST 2022 on macOS 12.3 arm64 Darwin (v0.6.0)
 
### Convert text to lowercase: using `awk`
```
Command: 'awk {print tolower($0)}'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'
```
* Binary: __/opt/homebrew/Cellar/gawk/5.1.1/bin/gawk__
* Throughput speed: `169 MB/sec`
* Invocation speed: `272 ops/sec`

### Convert text to lowercase: using `perl`
```
Command: 'perl -ne print lc'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'
```
* Binary: __/usr/bin/perl__
* Throughput speed: `654 MB/sec`
* Invocation speed: `383 ops/sec`

### Convert text to lowercase: using `perl`
```
Command: 'perl -CSA -ne use utf8; binmode STDOUT, ":utf8"; print lc'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Binary: __/usr/bin/perl__
* Throughput speed: `98 MB/sec`
* Invocation speed: `368 ops/sec`

### Convert text to lowercase: using `php`
```
Command: 'php -r while($f = fgets(STDIN)){ print strtolower($f); }'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'
```
* Binary: __/opt/homebrew/Cellar/php/8.1.4/bin/php__
* Throughput speed: `244 MB/sec`
* Invocation speed: `58 ops/sec`

### Convert text to lowercase: using `php`
```
Command: 'php -r while($f = fgets(STDIN)){ print mb_strtolower($f); }'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Binary: __/opt/homebrew/Cellar/php/8.1.4/bin/php__
* Throughput speed: `63 MB/sec`
* Invocation speed: `58 ops/sec`

### Convert text to lowercase: using `sed`
```
Command: 'sed -e s/\(.*\)/\L\1/'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'LŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
```
* Binary: __/usr/bin/sed__
* Throughput speed: `49 MB/sec`
* Invocation speed: `1060 ops/sec`

### Convert text to lowercase: using `sed`
```
Command: 'sed y/ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏ...'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : ''
```
* Binary: __/usr/bin/sed__
* Throughput speed: `5556 MB/sec`
* Invocation speed: `1091 ops/sec`

### Convert text to lowercase: using `tr`
```
Command: 'tr [:upper:] [:lower:]'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'
```
* Binary: __/usr/bin/tr__
* Throughput speed: `27 MB/sec`
* Invocation speed: `1071 ops/sec`

### Convert text to lowercase: using `gtr`
```
Command: 'gtr [:upper:] [:lower:]'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'
```
* Binary: __/opt/homebrew/Cellar/coreutils/9.1/bin/gtr__
* Throughput speed: `1064 MB/sec`
* Invocation speed: `919 ops/sec`

### Convert text to lowercase: using `${line,,}`
```
Command: '${line,,}'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'
```
* Throughput speed: `9 MB/sec`
* Invocation speed: `9709 ops/sec`


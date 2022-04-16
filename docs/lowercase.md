# lowercase
 
> run at Sat Apr 16 22:37:07 CEST 2022
> run on macOS 12.3 arm64 Darwin
> benchmark v0.6.1
 
### Convert text to lowercase: using `awk`
```
Command: 'awk {print tolower($0)}'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'
```
* Binary: /opt/homebrew/Cellar/gawk/5.1.1/bin/gawk
* Version: GNU Awk 5.1.1, API: 3.1 (GNU MPFR 4.1.0, GNU MP 6.2.1)
* Throughput speed: `168 MB/sec`
* Invocation speed: `271 ops/sec`

### Convert text to lowercase: using `perl`
```
Command: 'perl -ne print lc'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'
```
* Binary: /usr/bin/perl
* Version: 
* Throughput speed: `649 MB/sec`
* Invocation speed: `379 ops/sec`

### Convert text to lowercase: using `perl`
```
Command: 'perl -CSA -ne use utf8; binmode STDOUT, ":utf8"; print lc'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Binary: /usr/bin/perl
* Version: 
* Throughput speed: `98 MB/sec`
* Invocation speed: `366 ops/sec`

### Convert text to lowercase: using `php`
```
Command: 'php -r while($f = fgets(STDIN)){ print strtolower($f); }'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'
```
* Binary: /opt/homebrew/Cellar/php/8.1.4/bin/php
* Version: PHP 8.1.4 (cli) (built: Mar 18 2022 09:32:37) (NTS)
* Throughput speed: `244 MB/sec`
* Invocation speed: `54 ops/sec`

### Convert text to lowercase: using `php`
```
Command: 'php -r while($f = fgets(STDIN)){ print mb_strtolower($f); }'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Binary: /opt/homebrew/Cellar/php/8.1.4/bin/php
* Version: PHP 8.1.4 (cli) (built: Mar 18 2022 09:32:37) (NTS)
* Throughput speed: `62 MB/sec`
* Invocation speed: `57 ops/sec`

### Convert text to lowercase: using `sed`
```
Command: 'sed -e s/\(.*\)/\L\1/'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'LŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
```
* Binary: /usr/bin/sed
* Throughput speed: `49 MB/sec`
* Invocation speed: `1043 ops/sec`

### Convert text to lowercase: using `sed`
```
Command: 'sed y/ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏ...'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : ''
```
* Binary: /usr/bin/sed
* Throughput speed: `5263 MB/sec`
* Invocation speed: `1060 ops/sec`

### Convert text to lowercase: using `tr`
```
Command: 'tr [:upper:] [:lower:]'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'
```
* Binary: /usr/bin/tr
* Throughput speed: `27 MB/sec`
* Invocation speed: `1074 ops/sec`

### Convert text to lowercase: using `gtr`
```
Command: 'gtr [:upper:] [:lower:]'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gtr
* Version: tr (GNU coreutils) 9.1
* Throughput speed: `1053 MB/sec`
* Invocation speed: `916 ops/sec`

### Convert text to lowercase: using `${line,,}`
```
Command: '${line,,}'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'
```
* Throughput speed: `9 MB/sec`
* Invocation speed: `9524 ops/sec`


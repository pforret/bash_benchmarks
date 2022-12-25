# lowercase
 
    run at Sun Dec 25 19:43:33 CET 2022
    run on macOS 13.0.1 arm64 Darwin
    benchmark v0.6.5
    LANG = en_US.UTF-8
 
### Convert text to lowercase: using `awk`
```shell
Command: 'awk {print tolower($0)}'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Binary: /opt/homebrew/Cellar/gawk/5.2.0/bin/gawk
* Version: GNU Awk 5.2.0, API 3.2, (GNU MPFR 4.1.0-p13, GNU MP 6.2.1)
* Throughput speed: `93 MB/sec`
* Invocation speed: `216 ops/sec (4.63 millisec)`

### Convert text to lowercase: using `perl`
```shell
Command: 'perl -ne print lc'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'
```
* Binary: /usr/bin/perl
* Version: 
* Throughput speed: `543 MB/sec`
* Invocation speed: `230 ops/sec (4.34 millisec)`

### Convert text to lowercase: using `perl`
```shell
Command: 'perl -CSA -ne use utf8; binmode STDOUT, ":utf8"; print lc'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Binary: /usr/bin/perl
* Version: 
* Throughput speed: `102 MB/sec`
* Invocation speed: `221 ops/sec (4.53 millisec)`

### Convert text to lowercase: using `php`
```shell
Command: 'php -r while($f = fgets(STDIN)){ print strtolower($f); }'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'
```
* Binary: /opt/homebrew/Cellar/php/8.2.0/bin/php
* Version: PHP 8.2.0 (cli) (built: Dec  9 2022 16:30:32) (NTS)
* Throughput speed: `191 MB/sec`
* Invocation speed: `50 ops/sec (19.92 millisec)`

### Convert text to lowercase: using `php`
```shell
Command: 'php -r while($f = fgets(STDIN)){ print mb_strtolower($f); }'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Binary: /opt/homebrew/Cellar/php/8.2.0/bin/php
* Version: PHP 8.2.0 (cli) (built: Dec  9 2022 16:30:32) (NTS)
* Throughput speed: `83 MB/sec`
* Invocation speed: `50 ops/sec (19.92 millisec)`

### Convert text to lowercase: using `sed`
```shell
Command: 'sed -e s/\(.*\)/\L\1/'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'LŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
```
* Binary: /usr/bin/sed
* Throughput speed: `50 MB/sec`
* Invocation speed: `890 ops/sec (1.12 millisec)`

### Convert text to lowercase: using `sed`
```shell
Command: 'sed y/ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏ...'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : ''
```
* Binary: /usr/bin/sed
* Throughput speed: `5263 MB/sec`
* Invocation speed: `900 ops/sec (1.11 millisec)`

### Convert text to lowercase: using `tr`
```shell
Command: 'tr [:upper:] [:lower:]'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Binary: /usr/bin/tr
* Throughput speed: `25 MB/sec`
* Invocation speed: `725 ops/sec (1.38 millisec)`

### Convert text to lowercase: using `gtr`
```shell
Command: 'gtr [:upper:] [:lower:]'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : '�or�m �ps�m d�l�r sit am�t ���'
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gtr
* Version: tr (GNU coreutils) 9.1
* Throughput speed: `833 MB/sec`
* Invocation speed: `704 ops/sec (1.42 millisec)`

### Convert text to lowercase: using `${line,,}`
```shell
Command: '${line,,}'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'łorèm îpsùm dôlõr sit amét œßþ' (LANG = en_US.UTF-8)
```
* Throughput speed: `8 MB/sec`
* Invocation speed: `7874 ops/sec (0.13 millisec)`


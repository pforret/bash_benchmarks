# lowercase
 
    run at Mon Jan  2 21:57:09 CET 2023
    run on macOS 13.0.1 arm64 Darwin
    benchmark v0.6.7
    LANG = en_US.UTF-8
 
### Convert text to lowercase: using `awk`
```shell
Command: 'awk {print tolower($0)}'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Binary: `/opt/homebrew/Cellar/gawk/5.2.0/bin/gawk` (652K)
* Version: GNU Awk 5.2.0, API 3.2, (GNU MPFR 4.1.0-p13, GNU MP 6.2.1)
* Throughput speed: `94 MB/sec`
* Invocation speed: `211 ops/sec (4.75 millisec)`

### Convert text to lowercase: using `perl`
```shell
Command: 'perl -ne print lc'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'
```
* Binary: `/usr/bin/perl` (20K)
* Version: 
* Throughput speed: `532 MB/sec`
* Invocation speed: `224 ops/sec (4.47 millisec)`

### Convert text to lowercase: using `perl`
```shell
Command: 'perl -CSA -ne use utf8; binmode STDOUT, ":utf8"; print lc'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Binary: `/usr/bin/perl` (20K)
* Version: 
* Throughput speed: `101 MB/sec`
* Invocation speed: `222 ops/sec (4.50 millisec)`

### Convert text to lowercase: using `php`
```shell
Command: 'php -r while($f = fgets(STDIN)){ print strtolower($f); }'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'
```
* Binary: `/opt/homebrew/Cellar/php/8.2.0/bin/php` (15M)
* Version: PHP 8.2.0 (cli) (built: Dec  9 2022 16:30:32) (NTS)
* Throughput speed: `193 MB/sec`
* Invocation speed: `51 ops/sec (19.68 millisec)`

### Convert text to lowercase: using `php`
```shell
Command: 'php -r while($f = fgets(STDIN)){ print mb_strtolower($f); }'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Binary: `/opt/homebrew/Cellar/php/8.2.0/bin/php` (15M)
* Version: PHP 8.2.0 (cli) (built: Dec  9 2022 16:30:32) (NTS)
* Throughput speed: `84 MB/sec`
* Invocation speed: `51 ops/sec (19.70 millisec)`

### Convert text to lowercase: using `sed`
```shell
Command: 'sed -e s/\(.*\)/\L\1/'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'LŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
```
* Binary: `/usr/bin/sed` (44K)
* Throughput speed: `50 MB/sec`
* Invocation speed: `901 ops/sec (1.11 millisec)`

### Convert text to lowercase: using `sed`
```shell
Command: 'sed y/ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏ...'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : ''
```
* Binary: `/usr/bin/sed` (44K)
* Throughput speed: `5000 MB/sec`
* Invocation speed: `928 ops/sec (1.08 millisec)`

### Convert text to lowercase: using `tr`
```shell
Command: 'tr [:upper:] [:lower:]'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Binary: `/usr/bin/tr` (24K)
* Throughput speed: `25 MB/sec`
* Invocation speed: `725 ops/sec (1.38 millisec)`

### Convert text to lowercase: using `${line,,}`
```shell
Command: '${line,,}'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'łorèm îpsùm dôlõr sit amét œßþ' (LANG = en_US.UTF-8)
```
* Throughput speed: `8 MB/sec`
* Invocation speed: `7353 ops/sec (0.14 millisec)`


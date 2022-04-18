# lowercase
 
    run at Mon Apr 18 14:47:23 CEST 2022
    run on macOS 12.3 arm64 Darwin
    benchmark v0.6.2
 
### Convert text to lowercase: using `awk`
```shell
Command: 'awk {print tolower($0)}'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'łorèm îpsùm dôlõr sit amét œßþ'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/gawk/5.1.1/bin/gawk
* Version: GNU Awk 5.1.1, API: 3.1 (GNU MPFR 4.1.0, GNU MP 6.2.1)
* Throughput speed: `96 MB/sec`
* Invocation speed: `236 ops/sec`

### Convert text to lowercase: using `perl`
```shell
Command: 'perl -ne print lc'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'  (LANG = en_US.UTF-8)
```
* Binary: /usr/bin/perl
* Version: 
* Throughput speed: `606 MB/sec`
* Invocation speed: `331 ops/sec`

### Convert text to lowercase: using `perl`
```shell
Command: 'perl -CSA -ne use utf8; binmode STDOUT, ":utf8"; print lc'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'łorèm îpsùm dôlõr sit amét œßþ'  (LANG = en_US.UTF-8)
```
* Binary: /usr/bin/perl
* Version: 
* Throughput speed: `97 MB/sec`
* Invocation speed: `327 ops/sec`

### Convert text to lowercase: using `php`
```shell
Command: 'php -r while($f = fgets(STDIN)){ print strtolower($f); }'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/php/8.1.4/bin/php
* Version: PHP 8.1.4 (cli) (built: Mar 18 2022 09:32:37) (NTS)
* Throughput speed: `241 MB/sec`
* Invocation speed: `53 ops/sec`

### Convert text to lowercase: using `php`
```shell
Command: 'php -r while($f = fgets(STDIN)){ print mb_strtolower($f); }'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'łorèm îpsùm dôlõr sit amét œßþ'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/php/8.1.4/bin/php
* Version: PHP 8.1.4 (cli) (built: Mar 18 2022 09:32:37) (NTS)
* Throughput speed: `61 MB/sec`
* Invocation speed: `53 ops/sec`

### Convert text to lowercase: using `sed`
```shell
Command: 'sed -e s/\(.*\)/\L\1/'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'LŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'  (LANG = C)
```
* Binary: /usr/bin/sed
* Throughput speed: `48 MB/sec`
* Invocation speed: `923 ops/sec`

### Convert text to lowercase: using `sed`
```shell
Command: 'sed y/ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏ...'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : ''  (LANG = C)
```
* Binary: /usr/bin/sed
* Throughput speed: `5263 MB/sec`
* Invocation speed: `1037 ops/sec`

### Convert text to lowercase: using `tr`
```shell
Command: 'tr [:upper:] [:lower:]'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'łorèm îpsùm dôlõr sit amét œßþ'  (LANG = en_US.UTF-8)
```
* Binary: /usr/bin/tr
* Throughput speed: `25 MB/sec`
* Invocation speed: `827 ops/sec`

### Convert text to lowercase: using `gtr`
```shell
Command: 'gtr [:upper:] [:lower:]'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : '�or�m �ps�m d�l�r sit am�t ���'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gtr
* Version: tr (GNU coreutils) 9.1
* Throughput speed: `1042 MB/sec`
* Invocation speed: `800 ops/sec`

### Convert text to lowercase: using `${line,,}`
```shell
Command: '${line,,}'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'łorèm îpsùm dôlõr sit amét œßþ' (LANG = C)
```
* Throughput speed: `8 MB/sec`
* Invocation speed: `9174 ops/sec`


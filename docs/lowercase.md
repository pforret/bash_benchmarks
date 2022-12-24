# lowercase
 
    run at Sat Dec 24 06:25:58 PM CET 2022
    run on Ubuntu 22.04 x86_64 Linux
    benchmark v0.6.4
 
### Convert text to lowercase: using `awk`
    (LANG = en_US.UTF-8)
```shell
Command: 'awk {print tolower($0)}'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Binary: /usr/bin/gawk
* Version: GNU Awk 5.1.0, API: 3.0 (GNU MPFR 4.1.0, GNU MP 6.2.1)
* Throughput speed: `52 MB/sec`
* Invocation speed: `1044 ops/sec (0.96 millisec)`

### Convert text to lowercase: using `perl`
    (LANG = en_US.UTF-8)
```shell
Command: 'perl -ne print lc'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'
```
* Binary: /usr/bin/perl
* Version: 
* Throughput speed: `794 MB/sec`
* Invocation speed: `1059 ops/sec (0.94 millisec)`

### Convert text to lowercase: using `perl`
    (LANG = en_US.UTF-8)
```shell
Command: 'perl -CSA -ne use utf8; binmode STDOUT, ":utf8"; print lc'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Binary: /usr/bin/perl
* Version: 
* Throughput speed: `111 MB/sec`
* Invocation speed: `433 ops/sec (2.31 millisec)`

### Convert text to lowercase: using `php`
    (LANG = en_US.UTF-8)
```shell
Command: 'php -r while($f = fgets(STDIN)){ print strtolower($f); }'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'
```
* Binary: /usr/bin/php8.2
* Version: PHP 8.2.0 (cli) (built: Dec 10 2022 10:53:01) (NTS)
* Throughput speed: `521 MB/sec`
* Invocation speed: `124 ops/sec (8.04 millisec)`

### Convert text to lowercase: using `php`
    (LANG = en_US.UTF-8)
```shell
Command: 'php -r while($f = fgets(STDIN)){ print mb_strtolower($f); }'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Binary: /usr/bin/php8.2
* Version: PHP 8.2.0 (cli) (built: Dec 10 2022 10:53:01) (NTS)
* Throughput speed: `84 MB/sec`
* Invocation speed: `125 ops/sec (8.02 millisec)`

### Convert text to lowercase: using `sed`
    (LANG = en_US.UTF-8)
```shell
Command: 'sed -e s/\(.*\)/\L\1/'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : '��or��m ��ps��m d��l��r sit am��t ������'
```
* Binary: /usr/bin/sed
* Version: /usr/bin/sed (GNU sed) 4.8
* Throughput speed: `17 MB/sec`
* Invocation speed: `1484 ops/sec (0.67 millisec)`

### Convert text to lowercase: using `sed`
    (LANG = en_US.UTF-8)
```shell
Command: 'sed y/ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏ...'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : ''
```
* Binary: /usr/bin/sed
* Version: /usr/bin/sed (GNU sed) 4.8
* Throughput speed: `7143 MB/sec`
* Invocation speed: `1572 ops/sec (0.64 millisec)`

### Convert text to lowercase: using `tr`
    (LANG = en_US.UTF-8)
```shell
Command: 'tr [:upper:] [:lower:]'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'
```
* Binary: /usr/bin/tr
* Version: tr (GNU coreutils) 8.32
* Throughput speed: `1923 MB/sec`
* Invocation speed: `1650 ops/sec (0.61 millisec)`

### Convert text to lowercase: using `gtr`
    (LANG = en_US.UTF-8)
```shell
Command: 'gtr [:upper:] [:lower:]'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : ''
```
* Binary: 
* Throughput speed: `182 MB/sec`
* Invocation speed: `20 ops/sec (50.61 millisec)`

### Convert text to lowercase: using `${line,,}`
    (LANG = en_US.UTF-8)
```shell
Command: '${line,,}'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'łorèm îpsùm dôlõr sit amét œßþ' (LANG = en_US.UTF-8)
```
* Throughput speed: `20 MB/sec`
* Invocation speed: `361 ops/sec (2.77 millisec)`


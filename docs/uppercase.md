# uppercase
 
    run at Sat Dec 24 07:10:42 PM CET 2022
    run on Ubuntu 22.04 x86_64 Linux
    benchmark v0.6.4
 
### Convert text to uppercase: using `awk`
    (LANG = en_US.UTF-8)
```shell
Command: 'awk {print toupper($0)}'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
```
* Binary: /usr/bin/gawk
* Version: GNU Awk 5.1.0, API: 3.0 (GNU MPFR 4.1.0, GNU MP 6.2.1)
* Throughput speed: `45 MB/sec`
* Invocation speed: `810 ops/sec (1.23 millisec)`

### Convert text to uppercase: using `sed`
    (LANG = en_US.UTF-8)
```shell
Command: 'sed y/abcdefghijklmnopqrstuvwxyzàáâäæãåāǎçćčèéêëēėęěîïííīįìǐ...'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : ''
```
* Binary: /usr/bin/sed
* Version: /usr/bin/sed (GNU sed) 4.8
* Throughput speed: `6667 MB/sec`
* Invocation speed: `1339 ops/sec (0.75 millisec)`

### Convert text to uppercase: using `tr`
    (LANG = en_US.UTF-8)
```shell
Command: 'tr [:lower:] [:upper:]'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'łORèM îPSùM DôLõR SIT AMéT œßþ'
```
* Binary: /usr/bin/tr
* Version: tr (GNU coreutils) 8.32
* Throughput speed: `1639 MB/sec`
* Invocation speed: `1456 ops/sec (0.69 millisec)`

### Convert text to uppercase: using `gtr`
    (LANG = en_US.UTF-8)
```shell
Command: 'gtr [:lower:] [:upper:]'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : ''
```
* Binary: 
* Throughput speed: `210 MB/sec`
* Invocation speed: `21 ops/sec (47.25 millisec)`

### Convert text to uppercase: using `${line^^}`
    (LANG = en_US.UTF-8)
```shell
Command: '${line^^}'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' (LANG = en_US.UTF-8)
```
* Throughput speed: `16 MB/sec`
* Invocation speed: `342 ops/sec (2.93 millisec)`


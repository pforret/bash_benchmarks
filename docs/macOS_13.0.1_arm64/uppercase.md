# uppercase
 
    run at Sun Jan  1 17:16:28 CET 2023
    run on macOS 13.0.1 arm64 Darwin
    benchmark v0.6.6
    LANG = en_US.UTF-8
 
### Convert text to uppercase: using `awk`
```shell
Command: 'awk {print toupper($0)}'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
```
* Binary: /opt/homebrew/Cellar/gawk/5.2.0/bin/gawk (652K)
* Version: GNU Awk 5.2.0, API 3.2, (GNU MPFR 4.1.0-p13, GNU MP 6.2.1)
* Throughput speed: `91 MB/sec`
* Invocation speed: `200 ops/sec (5.00 millisec)`

### Convert text to uppercase: using `sed`
```shell
Command: 'sed y/abcdefghijklmnopqrstuvwxyzàáâäæãåāǎçćčèéêëēėęěîïííīįìǐ...'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : ''
```
* Binary: /usr/bin/sed (44K)
* Throughput speed: `4762 MB/sec`
* Invocation speed: `549 ops/sec (1.82 millisec)`

### Convert text to uppercase: using `tr`
```shell
Command: 'tr [:lower:] [:upper:]'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
```
* Binary: /usr/bin/tr (24K)
* Throughput speed: `25 MB/sec`
* Invocation speed: `686 ops/sec (1.46 millisec)`

### Convert text to uppercase: using `gtr`
```shell
Command: 'gtr [:lower:] [:upper:]'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'łORèM îPSùM DôLÜR SIT AMéT œßþ'
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gtr (112K)
* Version: tr (GNU coreutils) 9.1
* Throughput speed: `826 MB/sec`
* Invocation speed: `722 ops/sec (1.39 millisec)`

### Convert text to uppercase: using `${line^^}`
```shell
Command: '${line^^}'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' (LANG = en_US.UTF-8)
```
* Throughput speed: `7 MB/sec`
* Invocation speed: `8000 ops/sec (0.12 millisec)`


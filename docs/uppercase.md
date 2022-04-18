# uppercase
 
    run at Mon Apr 18 14:54:57 CEST 2022
    run on macOS 12.3 arm64 Darwin
    benchmark v0.6.2
 
### Convert text to uppercase: using `awk`
```shell
Command: 'awk {print toupper($0)}'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/gawk/5.1.1/bin/gawk
* Version: GNU Awk 5.1.1, API: 3.1 (GNU MPFR 4.1.0, GNU MP 6.2.1)
* Throughput speed: `97 MB/sec`
* Invocation speed: `256 ops/sec`

### Convert text to uppercase: using `sed`
```shell
Command: 'sed y/abcdefghijklmnopqrstuvwxyzàáâäæãåāǎçćčèéêëēėęěîïííīįìǐ...'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : ''  (LANG = C)
```
* Binary: /usr/bin/sed
* Throughput speed: `6250 MB/sec`
* Invocation speed: `1088 ops/sec`

### Convert text to uppercase: using `tr`
```shell
Command: 'tr [:lower:] [:upper:]'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'  (LANG = en_US.UTF-8)
```
* Binary: /usr/bin/tr
* Throughput speed: `25 MB/sec`
* Invocation speed: `836 ops/sec`

### Convert text to uppercase: using `gtr`
```shell
Command: 'gtr [:lower:] [:upper:]'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'łORèM îPSùM DôLÜR SIT AMéT œßþ'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gtr
* Version: tr (GNU coreutils) 9.1
* Throughput speed: `1031 MB/sec`
* Invocation speed: `805 ops/sec`

### Convert text to uppercase: using `${line^^}`
```shell
Command: '${line^^}'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' (LANG = C)
```
* Throughput speed: `9 MB/sec`
* Invocation speed: `9346 ops/sec`


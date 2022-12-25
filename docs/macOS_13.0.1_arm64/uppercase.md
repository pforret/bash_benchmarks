# uppercase
 
    run at Sun Dec 25 19:51:56 CET 2022
    run on macOS 13.0.1 arm64 Darwin
    benchmark v0.6.5
    LANG = en_US.UTF-8
 
### Convert text to uppercase: using `awk`
```shell
Command: 'awk {print toupper($0)}'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
```
* Binary: /opt/homebrew/Cellar/gawk/5.2.0/bin/gawk
* Version: GNU Awk 5.2.0, API 3.2, (GNU MPFR 4.1.0-p13, GNU MP 6.2.1)
* Throughput speed: `93 MB/sec`
* Invocation speed: `211 ops/sec (4.73 millisec)`

### Convert text to uppercase: using `sed`
```shell
Command: 'sed y/abcdefghijklmnopqrstuvwxyzàáâäæãåāǎçćčèéêëēėęěîïííīįìǐ...'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : ''
```
* Binary: /usr/bin/sed
* Throughput speed: `4762 MB/sec`
* Invocation speed: `962 ops/sec (1.04 millisec)`

### Convert text to uppercase: using `tr`
```shell
Command: 'tr [:lower:] [:upper:]'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
```
* Binary: /usr/bin/tr
* Throughput speed: `25 MB/sec`
* Invocation speed: `742 ops/sec (1.35 millisec)`

### Convert text to uppercase: using `gtr`
```shell
Command: 'gtr [:lower:] [:upper:]'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'łORèM îPSùM DôLÜR SIT AMéT œßþ'
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gtr
* Version: tr (GNU coreutils) 9.1
* Throughput speed: `833 MB/sec`
* Invocation speed: `728 ops/sec (1.37 millisec)`

### Convert text to uppercase: using `${line^^}`
```shell
Command: '${line^^}'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' (LANG = en_US.UTF-8)
```
* Throughput speed: `7 MB/sec`
* Invocation speed: `7634 ops/sec (0.13 millisec)`


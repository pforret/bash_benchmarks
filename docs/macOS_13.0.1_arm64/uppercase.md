# uppercase
 
    run at Mon Jan  2 22:05:17 CET 2023
    run on macOS 13.0.1 arm64 Darwin
    benchmark v0.6.7
    LANG = en_US.UTF-8
 
### Convert text to uppercase: using `awk`
```shell
Command: 'awk {print toupper($0)}'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
```
* Binary: `/opt/homebrew/Cellar/gawk/5.2.0/bin/gawk` (652K)
* Version: GNU Awk 5.2.0, API 3.2, (GNU MPFR 4.1.0-p13, GNU MP 6.2.1)
* Throughput speed: `93 MB/sec`
* Invocation speed: `210 ops/sec (4.76 millisec)`

### Convert text to uppercase: using `sed`
```shell
Command: 'sed y/abcdefghijklmnopqrstuvwxyzàáâäæãåāǎçćčèéêëēėęěîïííīįìǐ...'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : ''
```
* Binary: `/usr/bin/sed` (44K)
* Throughput speed: `4000 MB/sec`
* Invocation speed: `877 ops/sec (1.14 millisec)`

### Convert text to uppercase: using `tr`
```shell
Command: 'tr [:lower:] [:upper:]'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
```
* Binary: `/usr/bin/tr` (24K)
* Throughput speed: `25 MB/sec`
* Invocation speed: `707 ops/sec (1.41 millisec)`

### Convert text to uppercase: using `${line^^}`
```shell
Command: '${line^^}'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' (LANG = en_US.UTF-8)
```
* Throughput speed: `7 MB/sec`
* Invocation speed: `7042 ops/sec (0.14 millisec)`


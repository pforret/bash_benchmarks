# romanize
 
    run at Fri Dec 23 09:56:49 PM CET 2022
    run on Ubuntu 22.04 x86_64 Linux
    benchmark v0.6.3
 
### Convert text to latin alphabet: using `awk`
```shell
Command: 'awk { gsub(/[ğЪЬъь]/,""); gsub(/[ÀÁÂÃÄÅĀĂĄǍΑԱ]/,"A"); gsub(/...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
### Convert text to latin alphabet: using `sed`
```shell
Command: 'sed y/ÄÀÂΑÁÅĂÃĀǍĄԱБԲÇĆČЦԾՉՑΔÐДĎԴÉÈÊËΕΗĒĖĘĚЕЁЭԵԷԸЃФՖΓГĢԳՂՀΙÍÎ...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : ''  (LANG = C)
```
* Binary: /usr/bin/sed
* Version: /usr/bin/sed (GNU sed) 4.8
* Throughput speed: `7143 MB/sec`
* Invocation speed: 
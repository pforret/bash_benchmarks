# romanize
 
> run at Sat Apr 16 22:38:18 CEST 2022
> run on macOS 12.3 arm64 Darwin
> benchmark v0.6.1
 
### Convert text to latin alphabet: using `awk`
```
Command: 'awk { gsub(/[ğЪЬъь]/,""); gsub(/[ÀÁÂÃÄÅĀĂĄǍΑԱ]/,"A"); gsub(/...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LAORAEM ADPSAIM dADlAEr sit amAOt LGAAC'
```
* Binary: /opt/homebrew/Cellar/gawk/5.1.1/bin/gawk
* Version: GNU Awk 5.1.1, API: 3.1 (GNU MPFR 4.1.0, GNU MP 6.2.1)
* Throughput speed: `15 MB/sec`
* Invocation speed: `251 ops/sec`

### Convert text to latin alphabet: using `sed`
```
Command: 'sed y/ÄÀÂΑÁÅĂÃĀǍĄԱБԲÇĆČЦԾՉՑΔÐДĎԴÉÈÊËΕΗĒĖĘĚЕЁЭԵԷԸЃФՖΓГĢԳՂՀΙÍÎ...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : ''
```
* Binary: /usr/bin/sed
* Throughput speed: `5882 MB/sec`
* Invocation speed: `1071 ops/sec`

### Convert text to latin alphabet: using `sed`
```
Command: 'sed -e s/[ğЪЬъь]//g -e s/[ÀÁÂÃÄÅĀĂĄǍΑԱ]/A/g -e s/[Æ]/AE/g -e...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LAORAEM ADPSAIM dADlAEr sit amAOt LGAAC'
```
* Binary: /usr/bin/sed
* Throughput speed: 
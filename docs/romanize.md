# romanize
 
> run at Sat Apr 16 22:14:23 CEST 2022 on macOS 12.3 arm64 Darwin (v0.6.0)
 
### Convert text to latin alphabet: using `awk`
```
Command: 'awk { gsub(/[ğЪЬъь]/,""); gsub(/[ÀÁÂÃÄÅĀĂĄǍΑԱ]/,"A"); gsub(/...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LAORAEM ADPSAIM dADlAEr sit amAOt LGAAC'
```
* Binary: __/opt/homebrew/Cellar/gawk/5.1.1/bin/gawk__
* Throughput speed: `15 MB/sec`
* Invocation speed: `235 ops/sec`

### Convert text to latin alphabet: using `sed`
```
Command: 'sed y/ÄÀÂΑÁÅĂÃĀǍĄԱБԲÇĆČЦԾՉՑΔÐДĎԴÉÈÊËΕΗĒĖĘĚЕЁЭԵԷԸЃФՖΓГĢԳՂՀΙÍÎ...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : ''
```
* Binary: __/usr/bin/sed__
* Throughput speed: `5556 MB/sec`
* Invocation speed: `855 ops/sec`

### Convert text to latin alphabet: using `sed`
```
Command: 'sed -e s/[ğЪЬъь]//g -e s/[ÀÁÂÃÄÅĀĂĄǍΑԱ]/A/g -e s/[Æ]/AE/g -e...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LAORAEM ADPSAIM dADlAEr sit amAOt LGAAC'
```
* Binary: __/usr/bin/sed__
* Throughput speed: `1 MB/sec`
* Invocation speed: `622 ops/sec`

### Convert text to latin alphabet: using `tr`
```
Command: 'tr ÄÀÂΑÁÅĂÃĀǍĄԱБԲÇĆČЦԾՉՑΔÐДĎԴÉÈÊËΕΗĒĖĘĚЕЁЭԵԷԸЃФՖΓГĢԳՂՀΙÍÎÏĪĮ...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'zzORzzM zzPSzzM dzzlzzr sit amzzt zzzgzz'
```
* Binary: __/usr/bin/tr__
* Throughput speed: `27 MB/sec`
* Invocation speed: `1013 ops/sec`

### Convert text to latin alphabet: using `gtr`
```
Command: 'gtr ÄÀÂΑÁÅĂÃĀǍĄԱБԲÇĆČЦԾՉՑΔÐДĎԴÉÈÊËΕΗĒĖĘĚЕЁЭԵԷԸЃФՖΓГĢԳՂՀΙÍÎÏĪ...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'zzORzzM zzPSzzM dzzlzzr sit amzzt zzzgzz'
```
* Binary: __/opt/homebrew/Cellar/coreutils/9.1/bin/gtr__
* Throughput speed: `1075 MB/sec`
* Invocation speed: `896 ops/sec`

### Convert text to latin alphabet: using `iconv`
```
Command: 'iconv -f utf-8 -t ascii//TRANSLIT'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LOR`EM ^IPS`UM d^ol~or sit am'et oessth'
```
* Binary: __/usr/bin/iconv__
* Throughput speed: `145 MB/sec`
* Invocation speed: `1057 ops/sec`

### Convert text to latin alphabet: using `uni2ascii`
```
Command: 'uni2ascii -B'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : '0x0141OREM IPSUM dolor sit amet oessy'
```
* Binary: __/opt/homebrew/Cellar/uni2ascii/4.18/bin/uni2ascii__
* Throughput speed: `2 MB/sec`
* Invocation speed: `804 ops/sec`


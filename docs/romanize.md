# romanize
 
> run at Sun Apr 10 00:24:38 CEST 2022 on macOS 12.3 arm64 Darwin (v0.5.9)
 
### Convert text to latin alphabet: using `awk`
```
Command: 'awk { gsub(/[ğЪЬъь]/,""); gsub(/[ÀÁÂÃÄÅĀĂĄǍΑԱ]/,"A"); gsub(/...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LOREM IPSUM dolor sit amet oessth'
```
* Throughput speed: `11 MB/sec`
* Invocation speed: `205 ops/sec`

### Convert text to latin alphabet: using `sed`
```
Command: 'sed y/ÄÀÂΑÁÅĂÃĀǍĄԱБԲÇĆČЦԾՉՑΔÐДĎԴÉÈÊËΕΗĒĖĘĚЕЁЭԵԷԸЃФՖΓГĢԳՂՀΙÍÎ...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LOREM IPSUM dolor sit amet œßþ'
```
* Throughput speed: `235 MB/sec`
* Invocation speed: `732 ops/sec`

### Convert text to latin alphabet: using `sed`
```
Command: 'sed -e s/[ğЪЬъь]//g -e s/[ÀÁÂÃÄÅĀĂĄǍΑԱ]/A/g -e s/[Æ]/AE/g -e...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LOREM IPSUM dolor sit amet oessth'
```
* Throughput speed: `1 MB/sec`
* Invocation speed: `601 ops/sec`

### Convert text to latin alphabet: using `tr`
```
Command: 'tr ÄÀÂΑÁÅĂÃĀǍĄԱБԲÇĆČЦԾՉՑΔÐДĎԴÉÈÊËΕΗĒĖĘĚЕЁЭԵԷԸЃФՖΓГĢԳՂՀΙÍÎÏĪĮ...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LOREM IPSUM dolor sit amet œßþ'
```
* Throughput speed: `25 MB/sec`
* Invocation speed: `899 ops/sec`

### Convert text to latin alphabet: using `iconv`
```
Command: 'iconv -f utf-8 -t ascii//TRANSLIT'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LOR`EM ^IPS`UM d^ol~or sit am'et oessth'
```
* Throughput speed: `146 MB/sec`
* Invocation speed: `989 ops/sec`

### Convert text to latin alphabet: using `uni2ascii`
```
Command: 'uni2ascii -B'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : '0x0141OREM IPSUM dolor sit amet oessy'
```
* Throughput speed: `2 MB/sec`
* Invocation speed: `764 ops/sec`


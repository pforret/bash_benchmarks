# romanize
 
    run at Sun Jan  1 16:50:42 CET 2023
    run on macOS 13.0.1 arm64 Darwin
    benchmark v0.6.6
    LANG = en_US.UTF-8
 
### Convert text to latin alphabet: using `awk`
```shell
Command: 'awk { gsub(/[ğЪЬъь]/,""); gsub(/[ÀÁÂÃÄÅĀĂĄǍΑԱ]/,"A"); gsub(/...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LOREM IPSUM dolor sit amet oessth'
```
* Binary: /opt/homebrew/Cellar/gawk/5.2.0/bin/gawk (652K)
* Version: GNU Awk 5.2.0, API 3.2, (GNU MPFR 4.1.0-p13, GNU MP 6.2.1)
* Throughput speed: `13 MB/sec`
* Invocation speed: `197 ops/sec (5.09 millisec)`

### Convert text to latin alphabet: using `sed`
```shell
Command: 'sed y/ÄÀÂΑÁÅĂÃĀǍĄԱБԲÇĆČЦԾՉՑΔÐДĎԴÉÈÊËΕΗĒĖĘĚЕЁЭԵԷԸЃФՖΓГĢԳՂՀΙÍÎ...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : ''
```
* Binary: /usr/bin/sed (44K)
* Throughput speed: `4348 MB/sec`
* Invocation speed: `903 ops/sec (1.11 millisec)`

### Convert text to latin alphabet: using `sed`
```shell
Command: 'sed -e s/[ğЪЬъь]//g -e s/[ÀÁÂÃÄÅĀĂĄǍΑԱ]/A/g -e s/[Æ]/AE/g -e...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LAORAEM ADPSAIM dADlAEr sit amAOt LGAAC'
```
* Binary: /usr/bin/sed (44K)
* Throughput speed: `1 MB/sec`
* Invocation speed: `603 ops/sec (1.66 millisec)`

### Convert text to latin alphabet: using `tr`
```shell
Command: 'tr ÄÀÂΑÁÅĂÃĀǍĄԱБԲÇĆČЦԾՉՑΔÐДĎԴÉÈÊËΕΗĒĖĘĚЕЁЭԵԷԸЃФՖΓГĢԳՂՀΙÍÎÏĪĮ...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LOREM IPSUM dolor sit amet œßþ'
```
* Binary: /usr/bin/tr (24K)
* Throughput speed: `25 MB/sec`
* Invocation speed: `789 ops/sec (1.27 millisec)`

### Convert text to latin alphabet: using `gtr`
```shell
Command: 'gtr ÄÀÂΑÁÅĂÃĀǍĄԱБԲÇĆČЦԾՉՑΔÐДĎԴÉÈÊËΕΗĒĖĘĚЕЁЭԵԷԸЃФՖΓГĢԳՂՀΙÍÎÏĪ...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'zzORzzM zzPSzzM dzzlzzr sit amzzt zzzgzz'
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gtr (112K)
* Version: tr (GNU coreutils) 9.1
* Throughput speed: `840 MB/sec`
* Invocation speed: `720 ops/sec (1.39 millisec)`

### Convert text to latin alphabet: using `iconv`
```shell
Command: 'iconv -f utf-8 -t ascii//TRANSLIT'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LOR`EM ^IPS`UM d^ol~or sit am'et oessth'
```
* Binary: /usr/bin/iconv (28K)
* Version: iconv (GNU libiconv 1.11)
* Throughput speed: `144 MB/sec`
* Invocation speed: `884 ops/sec (1.13 millisec)`

### Convert text to latin alphabet: using `gosh`
```shell
Command: 'gosh ascii'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LOREM IPSUM dolor sit amet oessth'
```
* Binary: /Users/pforret/.basher/cellar/packages/pforret/gosh/bin/gosh-mac (3.7M)
* Throughput speed: `1471 MB/sec`
* Invocation speed: `174 ops/sec (5.76 millisec)`

### Convert text to latin alphabet: using `uni2ascii`
```shell
Command: 'uni2ascii -B'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : '0x0141OREM IPSUM dolor sit amet oessy'
```
* Binary: /opt/homebrew/Cellar/uni2ascii/4.18/bin/uni2ascii (88K)
* Throughput speed: `1 MB/sec`
* Invocation speed: `693 ops/sec (1.44 millisec)`


# romanize
 
    run at Mon Jan  2 21:31:39 CET 2023
    run on macOS 13.0.1 arm64 Darwin
    benchmark v0.6.7
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
* Invocation speed: `194 ops/sec (5.17 millisec)`

### Convert text to latin alphabet: using `sed`
```shell
Command: 'sed y/ÄÀÂΑÁÅĂÃĀǍĄԱБԲÇĆČЦԾՉՑΔÐДĎԴÉÈÊËΕΗĒĖĘĚЕЁЭԵԷԸЃФՖΓГĢԳՂՀΙÍÎ...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : ''
```
* Binary: /usr/bin/sed (44K)
* Throughput speed: `5000 MB/sec`
* Invocation speed: `896 ops/sec (1.12 millisec)`

### Convert text to latin alphabet: using `sed`
```shell
Command: 'sed -e s/[ğЪЬъь]//g -e s/[ÀÁÂÃÄÅĀĂĄǍΑԱ]/A/g -e s/[Æ]/AE/g -e...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LAORAEM ADPSAIM dADlAEr sit amAOt LGAAC'
```
* Binary: /usr/bin/sed (44K)
* Throughput speed: `1 MB/sec`
* Invocation speed: `579 ops/sec (1.73 millisec)`

### Convert text to latin alphabet: using `tr`
```shell
Command: 'tr ÄÀÂΑÁÅĂÃĀǍĄԱБԲÇĆČЦԾՉՑΔÐДĎԴÉÈÊËΕΗĒĖĘĚЕЁЭԵԷԸЃФՖΓГĢԳՂՀΙÍÎÏĪĮ...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LOREM IPSUM dolor sit amet œßþ'
```
* Binary: /usr/bin/tr (24K)
* Throughput speed: `25 MB/sec`
* Invocation speed: `739 ops/sec (1.35 millisec)`

### Convert text to latin alphabet: using `iconv`
```shell
Command: 'iconv -f utf-8 -t ascii//TRANSLIT'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LOR`EM ^IPS`UM d^ol~or sit am'et oessth'
```
* Binary: /usr/bin/iconv (28K)
* Version: iconv (GNU libiconv 1.11)
* Throughput speed: `143 MB/sec`
* Invocation speed: `838 ops/sec (1.19 millisec)`

### Convert text to latin alphabet: using `gosh`
```shell
Command: 'gosh ascii'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LOREM IPSUM dolor sit amet oessth'
```
* Binary: /Users/pforret/.basher/cellar/packages/pforret/gosh/bin/gosh-mac (3.7M)
* Throughput speed: `1389 MB/sec`
* Invocation speed: `177 ops/sec (5.64 millisec)`

### Convert text to latin alphabet: using `uni2ascii`
```shell
Command: 'uni2ascii -B'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : '0x0141OREM IPSUM dolor sit amet oessy'
```
* Binary: /opt/homebrew/Cellar/uni2ascii/4.18/bin/uni2ascii (88K)
* Throughput speed: `1 MB/sec`
* Invocation speed: `659 ops/sec (1.52 millisec)`


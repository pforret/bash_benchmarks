# romanize
 
    run at Mon Apr 18 14:48:40 CEST 2022
    run on macOS 12.3 arm64 Darwin
    benchmark v0.6.2
 
### Convert text to latin alphabet: using `awk`
```shell
Command: 'awk { gsub(/[ğЪЬъь]/,""); gsub(/[ÀÁÂÃÄÅĀĂĄǍΑԱ]/,"A"); gsub(/...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LOREM IPSUM dolor sit amet oessth'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/gawk/5.1.1/bin/gawk
* Version: GNU Awk 5.1.1, API: 3.1 (GNU MPFR 4.1.0, GNU MP 6.2.1)
* Throughput speed: `12 MB/sec`
* Invocation speed: `232 ops/sec`

### Convert text to latin alphabet: using `sed`
```shell
Command: 'sed y/ÄÀÂΑÁÅĂÃĀǍĄԱБԲÇĆČЦԾՉՑΔÐДĎԴÉÈÊËΕΗĒĖĘĚЕЁЭԵԷԸЃФՖΓГĢԳՂՀΙÍÎ...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : ''  (LANG = C)
```
* Binary: /usr/bin/sed
* Throughput speed: `5556 MB/sec`
* Invocation speed: `1076 ops/sec`

### Convert text to latin alphabet: using `sed`
```shell
Command: 'sed -e s/[ğЪЬъь]//g -e s/[ÀÁÂÃÄÅĀĂĄǍΑԱ]/A/g -e s/[Æ]/AE/g -e...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LAORAEM ADPSAIM dADlAEr sit amAOt LGAAC'  (LANG = C)
```
* Binary: /usr/bin/sed
* Throughput speed: `1 MB/sec`
* Invocation speed: `625 ops/sec`

### Convert text to latin alphabet: using `tr`
```shell
Command: 'tr ÄÀÂΑÁÅĂÃĀǍĄԱБԲÇĆČЦԾՉՑΔÐДĎԴÉÈÊËΕΗĒĖĘĚЕЁЭԵԷԸЃФՖΓГĢԳՂՀΙÍÎÏĪĮ...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LOREM IPSUM dolor sit amet œßþ'  (LANG = en_US.UTF-8)
```
* Binary: /usr/bin/tr
* Throughput speed: `25 MB/sec`
* Invocation speed: `890 ops/sec`

### Convert text to latin alphabet: using `gtr`
```shell
Command: 'gtr ÄÀÂΑÁÅĂÃĀǍĄԱБԲÇĆČЦԾՉՑΔÐДĎԴÉÈÊËΕΗĒĖĘĚЕЁЭԵԷԸЃФՖΓГĢԳՂՀΙÍÎÏĪ...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'zzORzzM zzPSzzM dzzlzzr sit amzzt zzzgzz'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gtr
* Version: tr (GNU coreutils) 9.1
* Throughput speed: `1031 MB/sec`
* Invocation speed: `794 ops/sec`

### Convert text to latin alphabet: using `iconv`
```shell
Command: 'iconv -f utf-8 -t ascii//TRANSLIT'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LOR`EM ^IPS`UM d^ol~or sit am'et oessth'  (LANG = en_US.UTF-8)
```
* Binary: /usr/bin/iconv
* Version: iconv (GNU libiconv 1.11)
* Throughput speed: `145 MB/sec`
* Invocation speed: `978 ops/sec`

### Convert text to latin alphabet: using `uni2ascii`
```shell
Command: 'uni2ascii -B'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : '0x0141OREM IPSUM dolor sit amet oessy'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/uni2ascii/4.18/bin/uni2ascii
* Throughput speed: `2 MB/sec`
* Invocation speed: `782 ops/sec`


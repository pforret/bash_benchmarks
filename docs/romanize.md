# romanize
 
    run at Sat Dec 24 06:27:31 PM CET 2022
    run on Ubuntu 22.04 x86_64 Linux
    benchmark v0.6.4
 
### Convert text to latin alphabet: using `awk`
    (LANG = en_US.UTF-8)
```shell
Command: 'awk { gsub(/[ğЪЬъь]/,""); gsub(/[ÀÁÂÃÄÅĀĂĄǍΑԱ]/,"A"); gsub(/...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LOREM IPSUM dolor sit amet oessth'
```
* Binary: /usr/bin/gawk
* Version: GNU Awk 5.1.0, API: 3.0 (GNU MPFR 4.1.0, GNU MP 6.2.1)
* Throughput speed: `12 MB/sec`
* Invocation speed: `685 ops/sec (1.46 millisec)`

### Convert text to latin alphabet: using `sed`
    (LANG = en_US.UTF-8)
```shell
Command: 'sed y/ÄÀÂΑÁÅĂÃĀǍĄԱБԲÇĆČЦԾՉՑΔÐДĎԴÉÈÊËΕΗĒĖĘĚЕЁЭԵԷԸЃФՖΓГĢԳՂՀΙÍÎ...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : ''
```
* Binary: /usr/bin/sed
* Version: /usr/bin/sed (GNU sed) 4.8
* Throughput speed: `9091 MB/sec`
* Invocation speed: `1431 ops/sec (0.70 millisec)`

### Convert text to latin alphabet: using `sed`
    (LANG = en_US.UTF-8)
```shell
Command: 'sed -e s/[ğЪЬъь]//g -e s/[ÀÁÂÃÄÅĀĂĄǍΑԱ]/A/g -e s/[Æ]/AE/g -e...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LAORAEM ADPSAIM dADlAEr sit amAOt LGAAC'
```
* Binary: /usr/bin/sed
* Version: /usr/bin/sed (GNU sed) 4.8
* Throughput speed: `26 MB/sec`
* Invocation speed: `870 ops/sec (1.15 millisec)`

### Convert text to latin alphabet: using `tr`
    (LANG = en_US.UTF-8)
```shell
Command: 'tr ÄÀÂΑÁÅĂÃĀǍĄԱБԲÇĆČЦԾՉՑΔÐДĎԴÉÈÊËΕΗĒĖĘĚЕЁЭԵԷԸЃФՖΓГĢԳՂՀΙÍÎÏĪĮ...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'zzORzzM zzPSzzM dzzlzzr sit amzzt zzzgzz'
```
* Binary: /usr/bin/tr
* Version: tr (GNU coreutils) 8.32
* Throughput speed: `1754 MB/sec`
* Invocation speed: `1799 ops/sec (0.56 millisec)`

### Convert text to latin alphabet: using `gtr`
    (LANG = en_US.UTF-8)
```shell
Command: 'gtr ÄÀÂΑÁÅĂÃĀǍĄԱБԲÇĆČЦԾՉՑΔÐДĎԴÉÈÊËΕΗĒĖĘĚЕЁЭԵԷԸЃФՖΓГĢԳՂՀΙÍÎÏĪ...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : ''
```
* Binary: 
* Throughput speed: `221 MB/sec`
* Invocation speed: `22 ops/sec (46.41 millisec)`

### Convert text to latin alphabet: using `iconv`
    (LANG = en_US.UTF-8)
```shell
Command: 'iconv -f utf-8 -t ascii//TRANSLIT'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LOREM IPSUM dolor sit amet oessth'
```
* Binary: /usr/bin/iconv
* Version: iconv (Ubuntu GLIBC 2.35-0ubuntu3.1) 2.35
* Throughput speed: `437 MB/sec`
* Invocation speed: `889 ops/sec (1.12 millisec)`

### Convert text to latin alphabet: using `uni2ascii`
    (LANG = en_US.UTF-8)
```shell
Command: 'uni2ascii -B'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : ''
```
* Binary: 
* Throughput speed: `181 MB/sec`
* Invocation speed: `22 ops/sec (46.49 millisec)`


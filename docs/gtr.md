# gtr
 
    run at Mon Apr 18 14:45:48 CEST 2022
    run on macOS 12.3 arm64 Darwin
    benchmark v0.6.2
 
### Standard MacOS tr vs Gnu gtr: using `tr`
```shell
Command: 'tr [:upper:] [:lower:]'
Before: 'LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISCING ELIT'
After : 'lorem ipsum dolor sit amet, consectetur adipiscing elit'  (LANG = en_US.UTF-8)
```
* Binary: /usr/bin/tr
* Throughput speed: `25 MB/sec`
* Invocation speed: `838 ops/sec`

### Standard MacOS tr vs Gnu gtr: using `gtr`
```shell
Command: 'gtr [:upper:] [:lower:]'
Before: 'LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISCING ELIT'
After : 'lorem ipsum dolor sit amet, consectetur adipiscing elit'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gtr
* Version: tr (GNU coreutils) 9.1
* Throughput speed: `1020 MB/sec`
* Invocation speed: `805 ops/sec`

### Standard MacOS tr vs Gnu gtr: using `tr`
```shell
Command: 'tr [:upper:] [:lower:]'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'łorèm îpsùm dôlõr sit amét œßþ'  (LANG = en_US.UTF-8)
```
* Binary: /usr/bin/tr
* Throughput speed: `25 MB/sec`
* Invocation speed: `781 ops/sec`

### Standard MacOS tr vs Gnu gtr: using `gtr`
```shell
Command: 'gtr [:upper:] [:lower:]'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : '�or�m �ps�m d�l�r sit am�t ���'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gtr
* Version: tr (GNU coreutils) 9.1
* Throughput speed: `1031 MB/sec`
* Invocation speed: `750 ops/sec`

### Standard MacOS tr vs Gnu gtr: using `tr`
```shell
Command: 'tr -cs [:alnum:].- -'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'ŁORÈM-ÎPSÙM-DÔLÕR-SIT-AMÉT-ŒßÞ-'  (LANG = en_US.UTF-8)
```
* Binary: /usr/bin/tr
* Throughput speed: `24 MB/sec`
* Invocation speed: `426 ops/sec`

### Standard MacOS tr vs Gnu gtr: using `gtr`
```shell
Command: 'gtr -cs [:alnum:].- -'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : '�-OR�-M-�-PS�-M-D�-L�-R-SIT-AM�-T-�-�-�-'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gtr
* Version: tr (GNU coreutils) 9.1
* Throughput speed: `420 MB/sec`
* Invocation speed: `726 ops/sec`

### Standard MacOS tr vs Gnu gtr: using `tr`
```shell
Command: 'tr ÄÀÂΑÁÅĂÃĀǍĄԱБԲÇĆČЦԾՉՑΔÐДĎԴÉÈÊËΕΗĒĖĘĚЕЁЭԵԷԸЃФՖΓГĢԳՂՀΙÍÎÏĪĮ...'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'LOREM IPSUM DOLOR SIT AMET ŒßÞ'  (LANG = en_US.UTF-8)
```
* Binary: /usr/bin/tr
* Throughput speed: `25 MB/sec`
* Invocation speed: `877 ops/sec`

### Standard MacOS tr vs Gnu gtr: using `gtr`
```shell
Command: 'gtr ÄÀÂΑÁÅĂÃĀǍĄԱБԲÇĆČЦԾՉՑΔÐДĎԴÉÈÊËΕΗĒĖĘĚЕЁЭԵԷԸЃФՖΓГĢԳՂՀΙÍÎÏĪ...'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'zzORzzM zzPSzzM DzzLzzR SIT AMzzT zzzgzz'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gtr
* Version: tr (GNU coreutils) 9.1
* Throughput speed: `1020 MB/sec`
* Invocation speed: `786 ops/sec`


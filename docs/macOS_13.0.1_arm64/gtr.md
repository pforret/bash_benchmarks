# gtr
 
    run at Sun Jan  1 16:48:34 CET 2023
    run on macOS 13.0.1 arm64 Darwin
    benchmark v0.6.6
    LANG = en_US.UTF-8
 
### Standard MacOS tr vs Gnu gtr: using `tr`
```shell
Command: 'tr [:upper:] [:lower:]'
Before: 'LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISCING ELIT'
After : 'lorem ipsum dolor sit amet, consectetur adipiscing elit'
```
* Binary: /usr/bin/tr (24K)
* Throughput speed: `25 MB/sec`
* Invocation speed: `727 ops/sec (1.38 millisec)`

### Standard MacOS tr vs Gnu gtr: using `gtr`
```shell
Command: 'gtr [:upper:] [:lower:]'
Before: 'LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISCING ELIT'
After : 'lorem ipsum dolor sit amet, consectetur adipiscing elit'
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gtr (112K)
* Version: tr (GNU coreutils) 9.1
* Throughput speed: `847 MB/sec`
* Invocation speed: `710 ops/sec (1.41 millisec)`

### Standard MacOS tr vs Gnu gtr: using `tr`
```shell
Command: 'tr [:upper:] [:lower:]'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'łorèm îpsùm dôlõr sit amét œßþ'
```
* Binary: /usr/bin/tr (24K)
* Throughput speed: `25 MB/sec`
* Invocation speed: `731 ops/sec (1.37 millisec)`

### Standard MacOS tr vs Gnu gtr: using `gtr`
```shell
Command: 'gtr [:upper:] [:lower:]'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : '�or�m �ps�m d�l�r sit am�t ���'
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gtr (112K)
* Version: tr (GNU coreutils) 9.1
* Throughput speed: `833 MB/sec`
* Invocation speed: `714 ops/sec (1.40 millisec)`

### Standard MacOS tr vs Gnu gtr: using `tr`
```shell
Command: 'tr -cs [:alnum:].- -'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'ŁORÈM-ÎPSÙM-DÔLÕR-SIT-AMÉT-ŒßÞ-'
```
* Binary: /usr/bin/tr (24K)
* Throughput speed: `25 MB/sec`
* Invocation speed: `443 ops/sec (2.26 millisec)`

### Standard MacOS tr vs Gnu gtr: using `gtr`
```shell
Command: 'gtr -cs [:alnum:].- -'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : '�-OR�-M-�-PS�-M-D�-L�-R-SIT-AM�-T-�-�-�-'
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gtr (112K)
* Version: tr (GNU coreutils) 9.1
* Throughput speed: `407 MB/sec`
* Invocation speed: `708 ops/sec (1.41 millisec)`

### Standard MacOS tr vs Gnu gtr: using `tr`
```shell
Command: 'tr ÄÀÂΑÁÅĂÃĀǍĄԱБԲÇĆČЦԾՉՑΔÐДĎԴÉÈÊËΕΗĒĖĘĚЕЁЭԵԷԸЃФՖΓГĢԳՂՀΙÍÎÏĪĮ...'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'LOREM IPSUM DOLOR SIT AMET ŒßÞ'
```
* Binary: /usr/bin/tr (24K)
* Throughput speed: `25 MB/sec`
* Invocation speed: `762 ops/sec (1.31 millisec)`

### Standard MacOS tr vs Gnu gtr: using `gtr`
```shell
Command: 'gtr ÄÀÂΑÁÅĂÃĀǍĄԱБԲÇĆČЦԾՉՑΔÐДĎԴÉÈÊËΕΗĒĖĘĚЕЁЭԵԷԸЃФՖΓГĢԳՂՀΙÍÎÏĪ...'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'zzORzzM zzPSzzM DzzLzzR SIT AMzzT zzzgzz'
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gtr (112K)
* Version: tr (GNU coreutils) 9.1
* Throughput speed: `813 MB/sec`
* Invocation speed: `702 ops/sec (1.42 millisec)`


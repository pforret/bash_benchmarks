# hash
 
    run at Mon Jan  2 21:30:36 CET 2023
    run on macOS 13.0.1 arm64 Darwin
    benchmark v0.6.7
    LANG = en_US.UTF-8
 
### Standard MacOS tr vs Gnu gtr: using `md5`
```shell
Command: 'md5'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'fa4e6f9fdc5facb035c16612165a2233'
```
* Binary: /sbin/md5 (24K)
* Throughput speed: `426 MB/sec`
* Invocation speed: `903 ops/sec (1.11 millisec)`

### Standard MacOS tr vs Gnu gtr: using `gmd5sum`
```shell
Command: 'gmd5sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'fa4e6f9fdc5facb035c16612165a2233  -'
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gmd5sum (108K)
* Version: md5sum (GNU coreutils) 9.1
* Throughput speed: `457 MB/sec`
* Invocation speed: `711 ops/sec (1.41 millisec)`

### Standard MacOS tr vs Gnu gtr: using `sha1sum`
```shell
Command: 'sha1sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'aefd95f83be2dc7462da24482cbd0977759d4ce0  -'
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gsha1sum (108K)
* Version: sha1sum (GNU coreutils) 9.1
* Throughput speed: `556 MB/sec`
* Invocation speed: `704 ops/sec (1.42 millisec)`

### Standard MacOS tr vs Gnu gtr: using `sha256sum`
```shell
Command: 'sha256sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'a6d3386aa0b1eef4229d603b30d0eb607cd6cd9a6fab73d93a567c5d2ae90203  -'
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gsha256sum (108K)
* Version: sha256sum (GNU coreutils) 9.1
* Throughput speed: `279 MB/sec`
* Invocation speed: `706 ops/sec (1.42 millisec)`

### Standard MacOS tr vs Gnu gtr: using `sha224sum`
```shell
Command: 'sha224sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : '70e36ca630f2adedd788d844d6f68fcf71976c2efb8e32fd79fd56a7  -'
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gsha224sum (108K)
* Version: sha224sum (GNU coreutils) 9.1
* Throughput speed: `279 MB/sec`
* Invocation speed: `701 ops/sec (1.43 millisec)`

### Standard MacOS tr vs Gnu gtr: using `sha384sum`
```shell
Command: 'sha384sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : '53cf0661223582f8df089b70a28ab02c212f180d7396a2bc155d15aa8ddb907f872f16f71385851a6cff284a6a9730a0  -'
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gsha384sum (108K)
* Version: sha384sum (GNU coreutils) 9.1
* Throughput speed: `422 MB/sec`
* Invocation speed: `708 ops/sec (1.41 millisec)`

### Standard MacOS tr vs Gnu gtr: using `sha512sum`
```shell
Command: 'sha512sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : '4ca9b5421ebe4b985adceab12706de72a7c5cb1fec044af3559493b9ca15e26cd9030dd6b7068867b676271dab4189e71b9cae157a630c3176ef64ecd5ded33d  -'
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gsha512sum (108K)
* Version: sha512sum (GNU coreutils) 9.1
* Throughput speed: `422 MB/sec`
* Invocation speed: `709 ops/sec (1.41 millisec)`

### Standard MacOS tr vs Gnu gtr: using `b2sum`
```shell
Command: 'b2sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'f8f0b804649a12456a239e4f1997fef581ee26b5869062093725b6586ff2f930d100b250eb928323afaa0cc274a85140ced258a7977d54c9ae791d49160cc16e  -'
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gb2sum (112K)
* Version: b2sum (GNU coreutils) 9.1
* Throughput speed: `568 MB/sec`
* Invocation speed: `706 ops/sec (1.42 millisec)`


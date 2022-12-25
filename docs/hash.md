# hash
 
    run at Mon Apr 18 19:05:16 CEST 2022
    run on macOS 12.3 arm64 Darwin
    benchmark v0.6.3
 
### Standard MacOS tr vs Gnu gtr: using `md5`
```shell
Command: 'md5'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'fa4e6f9fdc5facb035c16612165a2233'  (LANG = en_US.UTF-8)
```
* Binary: /sbin/md5
* Throughput speed: `435 MB/sec`
* Invocation speed: `1022 ops/sec`

### Standard MacOS tr vs Gnu gtr: using `gmd5sum`
```shell
Command: 'gmd5sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'fa4e6f9fdc5facb035c16612165a2233  -'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gmd5sum
* Version: md5sum (GNU coreutils) 9.1
* Throughput speed: `455 MB/sec`
* Invocation speed: `661 ops/sec`

### Standard MacOS tr vs Gnu gtr: using `sha1sum`
```shell
Command: 'sha1sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'aefd95f83be2dc7462da24482cbd0977759d4ce0  -'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gsha1sum
* Version: sha1sum (GNU coreutils) 9.1
* Throughput speed: `552 MB/sec`
* Invocation speed: `784 ops/sec`

### Standard MacOS tr vs Gnu gtr: using `sha256sum`
```shell
Command: 'sha256sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'a6d3386aa0b1eef4229d603b30d0eb607cd6cd9a6fab73d93a567c5d2ae90203  -'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gsha256sum
* Version: sha256sum (GNU coreutils) 9.1
* Throughput speed: `275 MB/sec`
* Invocation speed: `797 ops/sec`

### Standard MacOS tr vs Gnu gtr: using `sha224sum`
```shell
Command: 'sha224sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : '70e36ca630f2adedd788d844d6f68fcf71976c2efb8e32fd79fd56a7  -'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gsha224sum
* Version: sha224sum (GNU coreutils) 9.1
* Throughput speed: `279 MB/sec`
* Invocation speed: `807 ops/sec`

### Standard MacOS tr vs Gnu gtr: using `sha384sum`
```shell
Command: 'sha384sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : '53cf0661223582f8df089b70a28ab02c212f180d7396a2bc155d15aa8ddb907f872f16f71385851a6cff284a6a9730a0  -'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gsha384sum
* Version: sha384sum (GNU coreutils) 9.1
* Throughput speed: `437 MB/sec`
* Invocation speed: `804 ops/sec`

### Standard MacOS tr vs Gnu gtr: using `sha512sum`
```shell
Command: 'sha512sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : '4ca9b5421ebe4b985adceab12706de72a7c5cb1fec044af3559493b9ca15e26cd9030dd6b7068867b676271dab4189e71b9cae157a630c3176ef64ecd5ded33d  -'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gsha512sum
* Version: sha512sum (GNU coreutils) 9.1
* Throughput speed: `435 MB/sec`
* Invocation speed: `782 ops/sec`

### Standard MacOS tr vs Gnu gtr: using `b2sum`
```shell
Command: 'b2sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'f8f0b804649a12456a239e4f1997fef581ee26b5869062093725b6586ff2f930d100b250eb928323afaa0cc274a85140ced258a7977d54c9ae791d49160cc16e  -'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gb2sum
* Version: b2sum (GNU coreutils) 9.1
* Throughput speed: `595 MB/sec`
* Invocation speed: `777 ops/sec`


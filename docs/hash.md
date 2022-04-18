# hash
 
> run at Mon Apr 18 14:08:47 CEST 2022
> run on macOS 12.3 arm64 Darwin
> benchmark v0.6.2
 
### Standard MacOS tr vs Gnu gtr: using `md5`
```
Command: 'md5'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'fa4e6f9fdc5facb035c16612165a2233'  (LANG = en_US.UTF-8)
```
* Binary: /sbin/md5
* Throughput speed: `441 MB/sec`
* Invocation speed: `1007 ops/sec`

### Standard MacOS tr vs Gnu gtr: using `gmd5sum`
```
Command: 'gmd5sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'fa4e6f9fdc5facb035c16612165a2233  -'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gmd5sum
* Version: md5sum (GNU coreutils) 9.1
* Throughput speed: `472 MB/sec`
* Invocation speed: `617 ops/sec`

### Standard MacOS tr vs Gnu gtr: using `sha1sum`
```
Command: 'sha1sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'aefd95f83be2dc7462da24482cbd0977759d4ce0  -'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gsha1sum
* Version: sha1sum (GNU coreutils) 9.1
* Throughput speed: `543 MB/sec`
* Invocation speed: `661 ops/sec`

### Standard MacOS tr vs Gnu gtr: using `sha256sum`
```
Command: 'sha256sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'a6d3386aa0b1eef4229d603b30d0eb607cd6cd9a6fab73d93a567c5d2ae90203  -'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gsha256sum
* Version: sha256sum (GNU coreutils) 9.1
* Throughput speed: `280 MB/sec`
* Invocation speed: `776 ops/sec`

### Standard MacOS tr vs Gnu gtr: using `sha224sum`
```
Command: 'sha224sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : '70e36ca630f2adedd788d844d6f68fcf71976c2efb8e32fd79fd56a7  -'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gsha224sum
* Version: sha224sum (GNU coreutils) 9.1
* Throughput speed: `282 MB/sec`
* Invocation speed: `732 ops/sec`

### Standard MacOS tr vs Gnu gtr: using `sha384sum`
```
Command: 'sha384sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : '53cf0661223582f8df089b70a28ab02c212f180d7396a2bc155d15aa8ddb907f872f16f71385851a6cff284a6a9730a0  -'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gsha384sum
* Version: sha384sum (GNU coreutils) 9.1
* Throughput speed: `402 MB/sec`
* Invocation speed: `647 ops/sec`

### Standard MacOS tr vs Gnu gtr: using `sha512sum`
```
Command: 'sha512sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : '4ca9b5421ebe4b985adceab12706de72a7c5cb1fec044af3559493b9ca15e26cd9030dd6b7068867b676271dab4189e71b9cae157a630c3176ef64ecd5ded33d  -'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gsha512sum
* Version: sha512sum (GNU coreutils) 9.1
* Throughput speed: `426 MB/sec`
* Invocation speed: `627 ops/sec`

### Standard MacOS tr vs Gnu gtr: using `sha512sum`
```
Command: 'sha512sum -b'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : '4ca9b5421ebe4b985adceab12706de72a7c5cb1fec044af3559493b9ca15e26cd9030dd6b7068867b676271dab4189e71b9cae157a630c3176ef64ecd5ded33d *-'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gsha512sum
* Version: sha512sum (GNU coreutils) 9.1
* Throughput speed: `431 MB/sec`
* Invocation speed: `778 ops/sec`

### Standard MacOS tr vs Gnu gtr: using `sha512sum`
```
Command: 'sha512sum -t'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : '4ca9b5421ebe4b985adceab12706de72a7c5cb1fec044af3559493b9ca15e26cd9030dd6b7068867b676271dab4189e71b9cae157a630c3176ef64ecd5ded33d  -'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gsha512sum
* Version: sha512sum (GNU coreutils) 9.1
* Throughput speed: `427 MB/sec`
* Invocation speed: `795 ops/sec`

### Standard MacOS tr vs Gnu gtr: using `b2sum`
```
Command: 'b2sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'f8f0b804649a12456a239e4f1997fef581ee26b5869062093725b6586ff2f930d100b250eb928323afaa0cc274a85140ced258a7977d54c9ae791d49160cc16e  -'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gb2sum
* Version: b2sum (GNU coreutils) 9.1
* Throughput speed: `571 MB/sec`
* Invocation speed: `801 ops/sec`

### Standard MacOS tr vs Gnu gtr: using `b2sum`
```
Command: 'b2sum -b'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'f8f0b804649a12456a239e4f1997fef581ee26b5869062093725b6586ff2f930d100b250eb928323afaa0cc274a85140ced258a7977d54c9ae791d49160cc16e *-'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gb2sum
* Version: b2sum (GNU coreutils) 9.1
* Throughput speed: `588 MB/sec`
* Invocation speed: `785 ops/sec`


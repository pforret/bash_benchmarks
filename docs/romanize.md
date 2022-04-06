# romanize
 
> run at Wed Apr  6 23:15:46 CEST 2022 on Ubuntu 20.04 x86_64 Linux
 
### Convert text to latin alphabet: using `awk`
```
Command: 'awk { gsub(/[ğ]/,""); gsub(/[ÀÁÂÄÅĀĂĄΑ]/,"A"); gsub(/[Æ]/,"A...'
Result: '  [ÎńtérNäTÌÕNãl] 'like' Eλλη [](){}/.:^' => '  [InterNaTÌÕNãl] 'like' Elle [](){}/.:^'
```
* Throughput speed: `1.6 MB/s`
* Invocation speed: `336 ops/sec`

### Convert text to latin alphabet: using `sed`
```
Command: 'sed y/ÁÄÀÂΑÅĂÃĀǍĄČÇĆĎΔÐÉĚÈÊËΕΗĒĖĘΓĢΙÍÎÏĪĮÌǏΚĶΛĻΜŇÑΝŅÓÖÔΟΩÒØŌ...'
Result: '  [ÎńtérNäTÌÕNãl] 'like' Eλλη [](){}/.:^' => '  [InterNaTIONal] 'like' Elle [](){}/.:^'
```
* Throughput speed: `0.4 MB/s`
* Invocation speed: `645 ops/sec`

### Convert text to latin alphabet: using `tr`
```
Command: 'tr ÁÄÀÂΑÅĂÃĀǍĄČÇĆĎΔÐÉĚÈÊËΕΗĒĖĘΓĢΙÍÎÏĪĮÌǏΚĶΛĻΜŇÑΝŅÓÖÔΟΩÒØŌǑÕΠ...'
Result: '  [ÎńtérNäTÌÕNãl] 'like' Eλλη [](){}/.:^' => '  [zzzztzzrNzyTzezzNzzl] 'like' Ezzzzzz [](){}/.:^'
```
* Throughput speed: `1000.0 MB/s`
* Invocation speed: `808 ops/sec`

### Convert text to latin alphabet: using `tr`
```
Command: 'tr ÄÀÂÁÃÅĀǍÇĆČÉÈÊËĒĖĘĚÎÏÍĪĮÌǏÑÖÔÒÓØŌǑÕÜÙÛǓǕǗǙǛÚŪŸŽŹŻäàâáãåāǎ...'
Result: '  [ÎńtérNäTÌÕNãl] 'like' Eλλη [](){}/.:^' => '  [zzzAtzzrNzzTzezoNzzl] 'like' E�z�zη [](){}/.:^'
```
* Throughput speed: `1000.0 MB/s`
* Invocation speed: `904 ops/sec`


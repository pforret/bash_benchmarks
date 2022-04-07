# romanize
 
> run at Thu Apr  7 22:01:47 CEST 2022 on macOS 12.3 arm64 Darwin
 
### Convert text to latin alphabet: using `awk`
```
Command: 'awk { gsub(/[ğ]/,""); gsub(/[ÀÁÂÃÄÅĀĂĄǍ]/,"A"); gsub(/[Æ]/,"...'
Result: 'ŁORÈM ÎPSÙM dôlõr sit amét' => 'LOREM IPSUM dolor sit amet'
```
* Throughput speed: `19.06 MB/sec`
* Invocation speed: `215 ops/sec`

### Convert text to latin alphabet: using `sed`
```
Command: 'sed y/ÄÀÂÁÅĂÃĀǍĄÇĆČÐĎÉÈÊËĒĖĘĚĢÍÎÏĪĮÌǏĶŁĻÑŅŇÖÔÓÒØŌǑÕŘŠŤÜÙÛÚǓǕ...'
Result: 'ŁORÈM ÎPSÙM dôlõr sit amét' => 'LOREM IPSUM dolor sit amet'
```
* Throughput speed: `234.74 MB/sec`
* Invocation speed: `842 ops/sec`

### Convert text to latin alphabet: using `tr`
```
Command: 'tr ÄÀÂÁÅĂÃĀǍĄÇĆČÐĎÉÈÊËĒĖĘĚĢÍÎÏĪĮÌǏĶŁĻÑŅŇÖÔÓÒØŌǑÕŘŠŤÜÙÛÚǓǕǗǙǛ...'
Result: 'ŁORÈM ÎPSÙM dôlõr sit amét' => 'LOREM IPSUM dolor sit amet'
```
* Throughput speed: `24.58 MB/sec`
* Invocation speed: `904 ops/sec`


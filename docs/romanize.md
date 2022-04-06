# romanize
 
> run at Thu Apr  7 01:15:22 CEST 2022 on macOS 12.3 arm64 Darwin
 
### Convert text to latin alphabet: using `awk`
```
Command: 'awk { gsub(/[ğ]/,""); gsub(/[ÀÁÂÃÄÅĀĂĄǍ]/,"A"); gsub(/[Æ]/,"...'
Result: 'ŁORÈM ÎPSÙM dôlõr sit amét' => 'LOREM IPSUM dolor sit amet'
```
* Throughput speed: `4.0 MB/s`
* Invocation speed: `244 ops/sec`

### Convert text to latin alphabet: using `sed`
```
Command: 'sed y/ÄÀÂÁÅĂÃĀǍĄÇĆČÐĎÉÈÊËĒĖĘĚĢÍÎÏĪĮÌǏĶŁĻÑŅŇÖÔÓÒØŌǑÕŘŠŤÜÙÛÚǓǕ...'
Result: 'ŁORÈM ÎPSÙM dôlõr sit amét' => 'LOREM IPSUM dolor sit amet'
```
* Throughput speed: `50.0 MB/s`
* Invocation speed: `903 ops/sec`

### Convert text to latin alphabet: using `tr`
```
Command: 'tr ÄÀÂÁÅĂÃĀǍĄÇĆČÐĎÉÈÊËĒĖĘĚĢÍÎÏĪĮÌǏĶŁĻÑŅŇÖÔÓÒØŌǑÕŘŠŤÜÙÛÚǓǕǗǙǛ...'
Result: 'ŁORÈM ÎPSÙM dôlõr sit amét' => 'LOREM IPSUM dolor sit amet'
```
* Throughput speed: `5.0 MB/s`
* Invocation speed: `908 ops/sec`


# romanize
 
> run at Fri Apr  8 20:41:26 CEST 2022 on macOS 12.3 arm64 Darwin (v0.5.7)
 
### Convert text to latin alphabet: using `awk`
```
Command: 'awk { gsub(/[ğ]/,""); gsub(/[ÀÁÂÃÄÅĀĂĄǍ]/,"A"); gsub(/[Æ]/,"...'
Result: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ' => 'LOREM IPSUM dolor sit amet oessth'
```
* Throughput speed: `20 MB/sec`
* Invocation speed: `242 ops/sec`

### Convert text to latin alphabet: using `sed`
```
Command: 'sed y/ÄÀÂÁÅĂÃĀǍĄÇĆČÐĎÉÈÊËĒĖĘĚĢÍÎÏĪĮÌǏĶŁĻÑŅŇÖÔÓÒØŌǑÕŘŠŤÜÙÛÚǓǕ...'
Result: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ' => 'LOREM IPSUM dolor sit amet œßþ'
```
* Throughput speed: `240 MB/sec`
* Invocation speed: `910 ops/sec`

### Convert text to latin alphabet: using `tr`
```
Command: 'tr ÄÀÂÁÅĂÃĀǍĄÇĆČÐĎÉÈÊËĒĖĘĚĢÍÎÏĪĮÌǏĶŁĻÑŅŇÖÔÓÒØŌǑÕŘŠŤÜÙÛÚǓǕǗǙǛ...'
Result: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ' => 'LOREM IPSUM dolor sit amet œßþ'
```
* Throughput speed: `25 MB/sec`
* Invocation speed: `917 ops/sec`

### Convert text to latin alphabet: using `iconv`
```
Command: 'iconv -f utf-8 -t ascii//TRANSLIT'
Result: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ' => 'LOR`EM ^IPS`UM d^ol~or sit am'et oessth'
```
* Throughput speed: `146 MB/sec`
* Invocation speed: `983 ops/sec`

### Convert text to latin alphabet: using `uni2ascii`
```
Command: 'uni2ascii -B'
Result: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ' => '0x0141OREM IPSUM dolor sit amet oessy'
```
* Throughput speed: `2 MB/sec`
* Invocation speed: `792 ops/sec`


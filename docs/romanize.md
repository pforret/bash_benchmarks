# romanize
 
> run at Fri Apr  8 10:01:37 CEST 2022 on macOS 12.3 arm64 Darwin
 
### Convert text to latin alphabet: using `awk`
```
Command: 'awk { gsub(/[ğ]/,""); gsub(/[ÀÁÂÃÄÅĀĂĄǍ]/,"A"); gsub(/[Æ]/,"...'
Result: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ' => 'LOREM IPSUM dolor sit amet oessth'
```
* Throughput speed: `19.70 MB/sec`
* Invocation speed: `241 ops/sec`

### Convert text to latin alphabet: using `sed`
```
Command: 'sed y/ÄÀÂÁÅĂÃĀǍĄÇĆČÐĎÉÈÊËĒĖĘĚĢÍÎÏĪĮÌǏĶŁĻÑŅŇÖÔÓÒØŌǑÕŘŠŤÜÙÛÚǓǕ...'
Result: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ' => 'LOREM IPSUM dolor sit amet œßþ'
```
* Throughput speed: `240.38 MB/sec`
* Invocation speed: `905 ops/sec`

### Convert text to latin alphabet: using `tr`
```
Command: 'tr ÄÀÂÁÅĂÃĀǍĄÇĆČÐĎÉÈÊËĒĖĘĚĢÍÎÏĪĮÌǏĶŁĻÑŅŇÖÔÓÒØŌǑÕŘŠŤÜÙÛÚǓǕǗǙǛ...'
Result: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ' => 'LOREM IPSUM dolor sit amet œßþ'
```
* Throughput speed: `24.81 MB/sec`
* Invocation speed: `912 ops/sec`

### Convert text to latin alphabet: using `iconv`
```
Command: 'iconv -f utf-8 -t ascii//TRANSLIT'
Result: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ' => 'LOR`EM ^IPS`UM d^ol~or sit am'et oessth'
```
* Throughput speed: `145.56 MB/sec`
* Invocation speed: `969 ops/sec`

### Convert text to latin alphabet: using `uni2ascii`
```
Command: 'uni2ascii -B'
Result: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ' => '0x0141OREM IPSUM dolor sit amet oessy'
```
* Throughput speed: `1.67 MB/sec`
* Invocation speed: `712 ops/sec`


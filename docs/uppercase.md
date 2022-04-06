# uppercase
 
> run at Wed Apr  6 17:50:48 CEST 2022 on Ubuntu 20.04 x86_64 Linux
 
### Convert text to uppercase: using `awk`
```
Command: 'awk {print toupper($0)}'
Result: '  [ÎńtérNäTÌÕNãЛ] 'like' /Ελληνική/;:,-Россия- @մայր£' => '  [ÎŃTÉRNÄTÌÕNÃЛ] 'LIKE' /ΕΛΛΗΝΙΚΉ/;:,-РОССИЯ- @ՄԱՅՐ£'
```
* Throughput speed: `8.3 MB/s`
* Invocation speed: `548 ops/sec`

### Convert text to uppercase: using `sed`
```
Command: 'sed y/abcdefghijklmnopqrstuvwxyzàáâäæãåāǎçćčèéêëēėęěîïííīįìǐ...'
Result: '  [ÎńtérNäTÌÕNãЛ] 'like' /Ελληνική/;:,-Россия- @մայր£' => '  [ÎŃTÉRNÄTÌÕNÃЛ] 'LIKE' /Ελληνική/;:,-Россия- @մայր£'
```
* Throughput speed: `1.2 MB/s`
* Invocation speed: `673 ops/sec`

### Convert text to uppercase: using `tr`
```
Command: 'tr [:lower:] [:upper:]'
Result: '  [ÎńtérNäTÌÕNãЛ] 'like' /Ελληνική/;:,-Россия- @մայր£' => '  [ÎńTéRNäTÌÕNãЛ] 'LIKE' /Ελληνική/;:,-Россия- @մայր£'
```
* Throughput speed: `1000.0 MB/s`
* Invocation speed: `822 ops/sec`

### Convert text to uppercase: using `${line^^}`
```
Command: '${line^^}'
Result: '  [ÎńtérNäTÌÕNãЛ] 'like' /Ελληνική/;:,-Россия- @մայր£' => ''
```
* Throughput speed: `3.8 MB/s`
* Invocation speed: `16 ops/sec`


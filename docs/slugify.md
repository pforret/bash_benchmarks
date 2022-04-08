# slugify
 
> run at Fri Apr  8 20:42:45 CEST 2022 on macOS 12.3 arm64 Darwin (v0.5.7)
 
### Convert text to a slug: using `awk`
```
Command: 'awk { $0=tolower($0); gsub(/[àáâãäåāăąǎ]/,"a"); gsub(/[æ]/,"...'
Result: '(Demain, dès l'aube)' => 'demain-des-laube'
```
* Throughput speed: `6 MB/sec`
* Invocation speed: `243 ops/sec`


# slugify
 
> run at Thu Apr  7 01:15:32 CEST 2022 on macOS 12.3 arm64 Darwin
 
### Convert text to a slug: using `awk`
```
Command: 'awk { $0=tolower($0); gsub(/[àáâãäåāăąǎ]/,"a"); gsub(/[æ]/,"...'
Result: '(Demain, dès l'aube)' => 'demain-des-laube'
```
* Throughput speed: `1.1 MB/s`
* Invocation speed: `246 ops/sec`


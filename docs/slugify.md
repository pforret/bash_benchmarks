# slugify
 
> run at Thu Apr  7 22:02:05 CEST 2022 on macOS 12.3 arm64 Darwin
 
### Convert text to a slug: using `awk`
```
Command: 'awk { $0=tolower($0); gsub(/[àáâãäåāăąǎ]/,"a"); gsub(/[æ]/,"...'
Result: '(Demain, dès l'aube)' => 'demain-des-laube'
```
* Throughput speed: `5.57 MB/sec`
* Invocation speed: `244 ops/sec`


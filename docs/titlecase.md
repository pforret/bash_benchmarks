# titlecase
 
> run at Fri Apr 15 21:07:50 CEST 2022 on macOS 12.3 arm64 Darwin (v0.5.9)
 
### Convert text to title case: using `${line^}`
```
Command: '${line^}'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'Łorèm îpsùm dôlõr sit amét œßþ'
```
* Throughput speed: `9 MB/sec`
* Invocation speed: `9009 ops/sec`

### Convert text to title case: using `awk`
```
Command: 'awk BEGIN { FS=OFS=" " } {for (i=1; i<=NF; ++i) { $i=toupper...'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'Łorèm Îpsùm Dôlõr Sit Amét Œßþ'
```
* Throughput speed: `47 MB/sec`
* Invocation speed: `256 ops/sec`


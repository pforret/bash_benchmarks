# titlecase
 
    run at Mon Jan  2 22:03:58 CET 2023
    run on macOS 13.0.1 arm64 Darwin
    benchmark v0.6.7
    LANG = en_US.UTF-8
 
### Convert text to title case: using `${line^}`
```shell
Command: '${line^}'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'Łorèm îpsùm dôlõr sit amét œßþ' (LANG = en_US.UTF-8)
```
* Throughput speed: `7 MB/sec`
* Invocation speed: `7246 ops/sec (0.14 millisec)`

### Convert text to title case: using `awk`
```shell
Command: 'awk BEGIN { FS=OFS=" " } {for (i=1; i<=NF; ++i) { $i=toupper...'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'Łorèm Îpsùm Dôlõr Sit Amét Œßþ'
```
* Binary: `/opt/homebrew/Cellar/gawk/5.2.0/bin/gawk` (652K)
* Version: GNU Awk 5.2.0, API 3.2, (GNU MPFR 4.1.0-p13, GNU MP 6.2.1)
* Throughput speed: `48 MB/sec`
* Invocation speed: `206 ops/sec (4.85 millisec)`

### Convert text to title case: using `php`
```shell
Command: 'php -r while($f = fgets(STDIN)){ printf("%s\n", mb_convert_c...'
Before: 'łorèm îpsùm dôlõr sit amét œßþ'
After : 'Łorèm Îpsùm Dôlõr Sit Amét Œßþ'
```
* Binary: `/opt/homebrew/Cellar/php/8.2.0/bin/php` (15M)
* Version: PHP 8.2.0 (cli) (built: Dec  9 2022 16:30:32) (NTS)
* Throughput speed: `27 MB/sec`
* Invocation speed: `48 ops/sec (21.04 millisec)`


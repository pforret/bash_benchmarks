# slugify
 
    run at Sat Dec 24 06:29:24 PM CET 2022
    run on Ubuntu 22.04 x86_64 Linux
    benchmark v0.6.4
 
### Convert text to a slug: using `awk`
    (LANG = en_US.UTF-8)
```shell
Command: 'awk {gsub(/[^0-9a-zA-Z .-]/,""); gsub(/^[ \t\r\n]+/, ""); gs...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube'
```
* Binary: /usr/bin/gawk
* Version: GNU Awk 5.1.0, API: 3.0 (GNU MPFR 4.1.0, GNU MP 6.2.1)
* Throughput speed: `63 MB/sec`
* Invocation speed: `1032 ops/sec (0.97 millisec)`

### Convert text to a slug: using `sed`
    (LANG = en_US.UTF-8)
```shell
Command: 'sed -e s/[^0-9a-zA-Z .-]*//g -e s/^[[:space:]]*// -e s/[[:sp...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube'
```
* Binary: /usr/bin/sed
* Version: /usr/bin/sed (GNU sed) 4.8
* Throughput speed: `7 MB/sec`
* Invocation speed: `1271 ops/sec (0.79 millisec)`

### Convert text to a slug: using `sed`
    (LANG = en_US.UTF-8)
```shell
Command: 'sed -e s/[^0-9a-zA-Z .-]//g -e s/^[[:space:]]*// -e s/[[:spa...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube'
```
* Binary: /usr/bin/sed
* Version: /usr/bin/sed (GNU sed) 4.8
* Throughput speed: `36 MB/sec`
* Invocation speed: `1348 ops/sec (0.74 millisec)`

### Convert text to a slug: using `tr`
    (LANG = en_US.UTF-8)
```shell
Command: 'tr -cs [:alnum:].- -'
Before: '  (Demain, dès l'aube)     '
After : '-Demain-d-s-l-aube-'
```
* Binary: /usr/bin/tr
* Version: tr (GNU coreutils) 8.32
* Throughput speed: `694 MB/sec`
* Invocation speed: `1773 ops/sec (0.56 millisec)`

### Convert text to a slug: using `gtr`
    (LANG = en_US.UTF-8)
```shell
Command: 'gtr -cs [:alnum:].- -'
Before: '  (Demain, dès l'aube)     '
After : ''
```
* Binary: 
* Throughput speed: `246 MB/sec`
* Invocation speed: `22 ops/sec (45.64 millisec)`

### Convert text to a slug: using `${line//[^a-zA-Z0-9]/-}`
    (LANG = en_US.UTF-8)
```shell
Command: '${line//[^a-zA-Z0-9]/-}'
Before: '  (Demain, dès l'aube)     '
After : '---Demain--d-s-l-aube------' (LANG = en_US.UTF-8)
```
* Throughput speed: `0 MB/sec`
* Invocation speed: `10870 ops/sec (0.09 millisec)`

### Convert text to a slug: using `$(line="${line//[^a-zA-Z0-9 ]/}"; line="${line%"${line##*[![:space:]]}"}"; line="${line#"${line%%[![:space:]]*}"}"; echo "${line// /-}")`
    (LANG = en_US.UTF-8)
```shell
Command: '$(line="${line//[^a-zA-Z0-9 ]/}"; line="${line%"${line##*[![...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube' (LANG = en_US.UTF-8)
```
* Throughput speed: `0 MB/sec`
* Invocation speed: `1742 ops/sec (0.57 millisec)`


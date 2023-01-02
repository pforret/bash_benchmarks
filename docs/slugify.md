# slugify
 
    run at Mon Jan  2 21:36:28 CET 2023
    run on macOS 13.0.1 arm64 Darwin
    benchmark v0.6.7
    LANG = en_US.UTF-8
 
### Convert text to a slug: using `awk`
```shell
Command: 'awk {gsub(/[^0-9a-zA-Z .-]/,""); gsub(/^[ \t\r\n]+/, ""); gs...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube'
```
* Binary: /opt/homebrew/Cellar/gawk/5.2.0/bin/gawk (652K)
* Version: GNU Awk 5.2.0, API 3.2, (GNU MPFR 4.1.0-p13, GNU MP 6.2.1)
* Throughput speed: `75 MB/sec`
* Invocation speed: `203 ops/sec (4.93 millisec)`

### Convert text to a slug: using `sed`
```shell
Command: 'sed -e s/[^0-9a-zA-Z .-]*//g -e s/^[[:space:]]*// -e s/[[:sp...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube'
```
* Binary: /usr/bin/sed (44K)
* Throughput speed: `8 MB/sec`
* Invocation speed: `835 ops/sec (1.20 millisec)`

### Convert text to a slug: using `sed`
```shell
Command: 'sed -e s/[^0-9a-zA-Z .-]//g -e s/^[[:space:]]*// -e s/[[:spa...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube'
```
* Binary: /usr/bin/sed (44K)
* Throughput speed: `19 MB/sec`
* Invocation speed: `852 ops/sec (1.17 millisec)`

### Convert text to a slug: using `tr`
```shell
Command: 'tr -cs [:alnum:].- -'
Before: '  (Demain, dès l'aube)     '
After : '-Demain-dès-l-aube-'
```
* Binary: /usr/bin/tr (24K)
* Throughput speed: `25 MB/sec`
* Invocation speed: `433 ops/sec (2.31 millisec)`

### Convert text to a slug: using `gosh`
```shell
Command: 'gosh slug'
Before: '  (Demain, dès l'aube)     '
After : 'demain-des-l-aube'
```
* Binary: /Users/pforret/.basher/cellar/packages/pforret/gosh/bin/gosh-mac (3.7M)
* Throughput speed: `1205 MB/sec`
* Invocation speed: `168 ops/sec (5.97 millisec)`

### Convert text to a slug: using `${line//[^a-zA-Z0-9]/-}`
```shell
Command: '${line//[^a-zA-Z0-9]/-}'
Before: '  (Demain, dès l'aube)     '
After : '---Demain--d-s-l-aube------' (LANG = en_US.UTF-8)
```
* Throughput speed: `7 MB/sec`
* Invocation speed: `7042 ops/sec (0.14 millisec)`

### Convert text to a slug: using `$(line="${line//[^a-zA-Z0-9 ]/}"; line="${line%"${line##*[![:space:]]}"}"; line="${line#"${line%%[![:space:]]*}"}"; echo "${line// /-}")`
```shell
Command: '$(line="${line//[^a-zA-Z0-9 ]/}"; line="${line%"${line##*[![...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube' (LANG = en_US.UTF-8)
```
* Throughput speed: `6 MB/sec`
* Invocation speed: `1587 ops/sec (0.63 millisec)`


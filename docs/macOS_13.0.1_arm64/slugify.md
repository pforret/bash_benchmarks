# slugify
 
    run at Sun Dec 25 19:49:49 CET 2022
    run on macOS 13.0.1 arm64 Darwin
    benchmark v0.6.5
    LANG = en_US.UTF-8
 
### Convert text to a slug: using `awk`
```shell
Command: 'awk {gsub(/[^0-9a-zA-Z .-]/,""); gsub(/^[ \t\r\n]+/, ""); gs...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube'
```
* Binary: /opt/homebrew/Cellar/gawk/5.2.0/bin/gawk
* Version: GNU Awk 5.2.0, API 3.2, (GNU MPFR 4.1.0-p13, GNU MP 6.2.1)
* Throughput speed: `75 MB/sec`
* Invocation speed: `212 ops/sec (4.71 millisec)`

### Convert text to a slug: using `sed`
```shell
Command: 'sed -e s/[^0-9a-zA-Z .-]*//g -e s/^[[:space:]]*// -e s/[[:sp...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube'
```
* Binary: /usr/bin/sed
* Throughput speed: `8 MB/sec`
* Invocation speed: `901 ops/sec (1.11 millisec)`

### Convert text to a slug: using `sed`
```shell
Command: 'sed -e s/[^0-9a-zA-Z .-]//g -e s/^[[:space:]]*// -e s/[[:spa...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube'
```
* Binary: /usr/bin/sed
* Throughput speed: `19 MB/sec`
* Invocation speed: `906 ops/sec (1.10 millisec)`

### Convert text to a slug: using `tr`
```shell
Command: 'tr -cs [:alnum:].- -'
Before: '  (Demain, dès l'aube)     '
After : '-Demain-dès-l-aube-'
```
* Binary: /usr/bin/tr
* Throughput speed: `25 MB/sec`
* Invocation speed: `452 ops/sec (2.21 millisec)`

### Convert text to a slug: using `gtr`
```shell
Command: 'gtr -cs [:alnum:].- -'
Before: '  (Demain, dès l'aube)     '
After : '-Demain-d�-s-l-aube-'
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gtr
* Version: tr (GNU coreutils) 9.1
* Throughput speed: `389 MB/sec`
* Invocation speed: `735 ops/sec (1.36 millisec)`

### Convert text to a slug: using `${line//[^a-zA-Z0-9]/-}`
```shell
Command: '${line//[^a-zA-Z0-9]/-}'
Before: '  (Demain, dès l'aube)     '
After : '---Demain--d-s-l-aube------' (LANG = en_US.UTF-8)
```
* Throughput speed: `7 MB/sec`
* Invocation speed: `7519 ops/sec (0.13 millisec)`

### Convert text to a slug: using `$(line="${line//[^a-zA-Z0-9 ]/}"; line="${line%"${line##*[![:space:]]}"}"; line="${line#"${line%%[![:space:]]*}"}"; echo "${line// /-}")`
```shell
Command: '$(line="${line//[^a-zA-Z0-9 ]/}"; line="${line%"${line##*[![...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube' (LANG = en_US.UTF-8)
```
* Throughput speed: `6 MB/sec`
* Invocation speed: `1675 ops/sec (0.60 millisec)`


# slugify
 
    run at Sun Jan  1 16:55:40 CET 2023
    run on macOS 13.0.1 arm64 Darwin
    benchmark v0.6.6
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
* Invocation speed: `207 ops/sec (4.83 millisec)`

### Convert text to a slug: using `sed`
```shell
Command: 'sed -e s/[^0-9a-zA-Z .-]*//g -e s/^[[:space:]]*// -e s/[[:sp...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube'
```
* Binary: /usr/bin/sed (44K)
* Throughput speed: `8 MB/sec`
* Invocation speed: `903 ops/sec (1.11 millisec)`

### Convert text to a slug: using `sed`
```shell
Command: 'sed -e s/[^0-9a-zA-Z .-]//g -e s/^[[:space:]]*// -e s/[[:spa...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube'
```
* Binary: /usr/bin/sed (44K)
* Throughput speed: `19 MB/sec`
* Invocation speed: `919 ops/sec (1.09 millisec)`

### Convert text to a slug: using `tr`
```shell
Command: 'tr -cs [:alnum:].- -'
Before: '  (Demain, dès l'aube)     '
After : '-Demain-dès-l-aube-'
```
* Binary: /usr/bin/tr (24K)
* Throughput speed: `25 MB/sec`
* Invocation speed: `32 ops/sec (31.34 millisec)`

### Convert text to a slug: using `gtr`
```shell
Command: 'gtr -cs [:alnum:].- -'
Before: '  (Demain, dès l'aube)     '
After : '-Demain-d�-s-l-aube-'
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gtr (112K)
* Version: tr (GNU coreutils) 9.1
* Throughput speed: `410 MB/sec`
* Invocation speed: `683 ops/sec (1.47 millisec)`

### Convert text to a slug: using `gosh`
```shell
Command: 'gosh slug'
Before: '  (Demain, dès l'aube)     '
After : 'demain-des-l-aube'
```
* Binary: /Users/pforret/.basher/cellar/packages/pforret/gosh/bin/gosh-mac (3.7M)
* Throughput speed: `1389 MB/sec`
* Invocation speed: `168 ops/sec (5.93 millisec)`

### Convert text to a slug: using `${line//[^a-zA-Z0-9]/-}`
```shell
Command: '${line//[^a-zA-Z0-9]/-}'
Before: '  (Demain, dès l'aube)     '
After : '---Demain--d-s-l-aube------' (LANG = en_US.UTF-8)
```
* Throughput speed: `7 MB/sec`
* Invocation speed: `7634 ops/sec (0.13 millisec)`

### Convert text to a slug: using `$(line="${line//[^a-zA-Z0-9 ]/}"; line="${line%"${line##*[![:space:]]}"}"; line="${line#"${line%%[![:space:]]*}"}"; echo "${line// /-}")`
```shell
Command: '$(line="${line//[^a-zA-Z0-9 ]/}"; line="${line%"${line##*[![...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube' (LANG = en_US.UTF-8)
```
* Throughput speed: `6 MB/sec`
* Invocation speed: `1621 ops/sec (0.62 millisec)`


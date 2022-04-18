# slugify
 
    run at Mon Apr 18 14:53:02 CEST 2022
    run on macOS 12.3 arm64 Darwin
    benchmark v0.6.2
 
### Convert text to a slug: using `awk`
```shell
Command: 'awk {gsub(/[^0-9a-zA-Z .-]/,""); gsub(/^[ \t\r\n]+/, ""); gs...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/gawk/5.1.1/bin/gawk
* Version: GNU Awk 5.1.1, API: 3.1 (GNU MPFR 4.1.0, GNU MP 6.2.1)
* Throughput speed: `68 MB/sec`
* Invocation speed: `256 ops/sec`

### Convert text to a slug: using `sed`
```shell
Command: 'sed -e s/[^0-9a-zA-Z .-]*//g -e s/^[[:space:]]*// -e s/[[:sp...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube'  (LANG = C)
```
* Binary: /usr/bin/sed
* Throughput speed: `7 MB/sec`
* Invocation speed: `1014 ops/sec`

### Convert text to a slug: using `sed`
```shell
Command: 'sed -e s/[^0-9a-zA-Z .-]//g -e s/^[[:space:]]*// -e s/[[:spa...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube'  (LANG = C)
```
* Binary: /usr/bin/sed
* Throughput speed: `18 MB/sec`
* Invocation speed: `1041 ops/sec`

### Convert text to a slug: using `tr`
```shell
Command: 'tr -cs [:alnum:].- -'
Before: '  (Demain, dès l'aube)     '
After : '-Demain-dès-l-aube-'  (LANG = en_US.UTF-8)
```
* Binary: /usr/bin/tr
* Throughput speed: `25 MB/sec`
* Invocation speed: `482 ops/sec`

### Convert text to a slug: using `gtr`
```shell
Command: 'gtr -cs [:alnum:].- -'
Before: '  (Demain, dès l'aube)     '
After : '-Demain-d�-s-l-aube-'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gtr
* Version: tr (GNU coreutils) 9.1
* Throughput speed: `448 MB/sec`
* Invocation speed: `799 ops/sec`

### Convert text to a slug: using `${line//[^a-zA-Z0-9]/-}`
```shell
Command: '${line//[^a-zA-Z0-9]/-}'
Before: '  (Demain, dès l'aube)     '
After : '---Demain--d-s-l-aube------' (LANG = C)
```
* Throughput speed: `8 MB/sec`
* Invocation speed: `8696 ops/sec`

### Convert text to a slug: using `$(line="${line//[^a-zA-Z0-9 ]/}"; line="${line%"${line##*[![:space:]]}"}"; line="${line#"${line%%[![:space:]]*}"}"; echo "${line// /-}")`
```shell
Command: '$(line="${line//[^a-zA-Z0-9 ]/}"; line="${line%"${line##*[![...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube' (LANG = C)
```
* Throughput speed: `7 MB/sec`
* Invocation speed: `1718 ops/sec`


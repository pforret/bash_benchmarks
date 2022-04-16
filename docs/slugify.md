# slugify
 
> run at Sat Apr 16 22:18:45 CEST 2022 on macOS 12.3 arm64 Darwin (v0.6.0)
 
### Convert text to a slug: using `awk`
```
Command: 'awk {gsub(/[^0-9a-zA-Z .-]/,""); gsub(/^[ \t\r\n]+/, ""); gs...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube'
```
* Binary: __/opt/homebrew/Cellar/gawk/5.1.1/bin/gawk__
* Throughput speed: `92 MB/sec`
* Invocation speed: `232 ops/sec`

### Convert text to a slug: using `sed`
```
Command: 'sed -e s/[^0-9a-zA-Z .-]*//g -e s/^[[:space:]]*// -e s/[[:sp...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube'
```
* Binary: __/usr/bin/sed__
* Throughput speed: `7 MB/sec`
* Invocation speed: `941 ops/sec`

### Convert text to a slug: using `sed`
```
Command: 'sed -e s/[^0-9a-zA-Z .-]//g -e s/^[[:space:]]*// -e s/[[:spa...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube'
```
* Binary: __/usr/bin/sed__
* Throughput speed: `18 MB/sec`
* Invocation speed: `1010 ops/sec`

### Convert text to a slug: using `tr`
```
Command: 'tr -cs [:alnum:].- -'
Before: '  (Demain, dès l'aube)     '
After : '-Demain-d-s-l-aube-'
```
* Binary: __/usr/bin/tr__
* Throughput speed: `27 MB/sec`
* Invocation speed: `1046 ops/sec`

### Convert text to a slug: using `gtr`
```
Command: 'gtr -cs [:alnum:].- -'
Before: '  (Demain, dès l'aube)     '
After : '-Demain-d-s-l-aube-'
```
* Binary: __/opt/homebrew/Cellar/coreutils/9.1/bin/gtr__
* Throughput speed: `446 MB/sec`
* Invocation speed: `895 ops/sec`

### Convert text to a slug: using `${line//[^a-zA-Z0-9]/-}`
```
Command: '${line//[^a-zA-Z0-9]/-}'
Before: '  (Demain, dès l'aube)     '
After : '---Demain--d--s-l-aube------'
```
* Throughput speed: `8 MB/sec`
* Invocation speed: `8696 ops/sec`

### Convert text to a slug: using `$(line="${line//[^a-zA-Z0-9 ]/}"; line="${line%"${line##*[![:space:]]}"}"; line="${line#"${line%%[![:space:]]*}"}"; echo "${line// /-}")`
```
Command: '$(line="${line//[^a-zA-Z0-9 ]/}"; line="${line%"${line##*[![...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube'
```
* Throughput speed: `8 MB/sec`
* Invocation speed: `1789 ops/sec`


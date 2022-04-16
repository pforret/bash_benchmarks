# slugify
 
> run at Sat Apr 16 15:32:01 CEST 2022 on macOS 12.3 arm64 Darwin (v0.5.9)
 
### Convert text to a slug: using `awk`
```
Command: 'awk {gsub(/[^0-9a-zA-Z .-]/,""); gsub(/^[ \t\r\n]+/, ""); gs...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube'
```
* Throughput speed: `95 MB/sec`
* Invocation speed: `268 ops/sec`

### Convert text to a slug: using `sed`
```
Command: 'sed -e s/[^0-9a-zA-Z .-]*//g -e s/^[[:space:]]*// -e s/[[:sp...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube'
```
* Throughput speed: `7 MB/sec`
* Invocation speed: `1021 ops/sec`

### Convert text to a slug: using `sed`
```
Command: 'sed -e s/[^0-9a-zA-Z .-]//g -e s/^[[:space:]]*// -e s/[[:spa...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube'
```
* Throughput speed: `18 MB/sec`
* Invocation speed: `1022 ops/sec`

### Convert text to a slug: using `tr`
```
Command: 'tr -cs [:alnum:].- -'
Before: '  (Demain, dès l'aube)     '
After : '-Demain-d-s-l-aube-'
```
* Throughput speed: `27 MB/sec`
* Invocation speed: `1063 ops/sec`

### Convert text to a slug: using `${line//[^a-zA-Z0-9]/-}`
```
Command: '${line//[^a-zA-Z0-9]/-}'
Before: '  (Demain, dès l'aube)     '
After : '---Demain--d--s-l-aube------'
```
* Throughput speed: `8 MB/sec`
* Invocation speed: `9174 ops/sec`

### Convert text to a slug: using `$(line="${line//[^a-zA-Z0-9 ]/}"; line="${line%"${line##*[![:space:]]}"}"; line="${line#"${line%%[![:space:]]*}"}"; echo "${line// /-}")`
```
Command: '$(line="${line//[^a-zA-Z0-9 ]/}"; line="${line%"${line##*[![...'
Before: '  (Demain, dès l'aube)     '
After : 'Demain-ds-laube'
```
* Throughput speed: `8 MB/sec`
* Invocation speed: `1869 ops/sec`


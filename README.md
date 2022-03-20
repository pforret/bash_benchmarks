# BASH BENCHMARKS
Benchmarks to test different methods for string, file, process manipulation, ...

## Transliteration

    i.e. removing diacritics [îñtërńåtîõnāl] => [international]

* Text Transliteration: using `tr`: 5.3 MB/s
* Text Transliteration: using `sed`: 70.3 MB/s <<< fastest
* Text Transliteration: using `iconv`: 35.2 MB/s

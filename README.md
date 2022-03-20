# BASH BENCHMARKS
Benchmarks to test different methods for string, file, process manipulation, ...

## [Transliteration](https://github.com/pforret/bash_benchmarks/blob/main/transliteration.sh)

> i.e. removing diacritics [îñtërńåtîõnāl] => [international]
> 
> inspired by [stackoverflow.com/questions/10207354/how-to-remove-all-of-the-diacritics-from-a-file](https://stackoverflow.com/questions/10207354/how-to-remove-all-of-the-diacritics-from-a-file)

* Text Transliteration: using `tr`: 5.3 MB/s
* Text Transliteration: using `sed`: 70.3 MB/s <<< fastest
* Text Transliteration: using `iconv`: 35.2 MB/s

# BASH BENCHMARKS
Benchmarks to test different methods for string, file, process manipulation, ...

## [Transliteration](https://github.com/pforret/bash_benchmarks/blob/main/transliteration.sh)

> i.e. removing diacritics [îñtërńåtîõnāl] => [international]
> 
> inspired by [stackoverflow.com/questions/10207354/how-to-remove-all-of-the-diacritics-from-a-file](https://stackoverflow.com/questions/10207354/how-to-remove-all-of-the-diacritics-from-a-file)

* Text Transliteration: using `tr`: 5.3 MB/s
* Text Transliteration: using `sed`: 70.3 MB/s <<< fastest
* Text Transliteration: using `iconv`: 35.2 MB/s

---
PS: all these times/speeds were measured on _my_ laptop; a Macbook Pro M1 2021 16". 
The absolute speed on your machine for these scripts might be different, 
but the relative speeds of one method (e.g. `sed`) compared to others (e.g. `tr`) remains relevant.
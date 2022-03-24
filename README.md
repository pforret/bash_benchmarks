# BASH BENCHMARKS
Benchmarks to test different methods for string, file, process manipulation, ...

## [Transliteration](https://github.com/pforret/bash_benchmarks/blob/main/transliteration.sh)

> i.e. removing diacritics [îñtërńåtîõnāl] => [international]
> 
> inspired by [stackoverflow.com/questions/10207354/how-to-remove-all-of-the-diacritics-from-a-file](https://stackoverflow.com/questions/10207354/how-to-remove-all-of-the-diacritics-from-a-file)

### Text Transliteration: using awk
* Example: [Îñtèrńätìõnālísåtįòn] => [Internationalisation]
* 270 msec -- 15.6 MB/s

### Text Transliteration: using iconv
* Example: [Îñtèrńätìõnālísåtįòn] => [^I~nt`er'n"at`i~onal'isati`on]
* 130 msec -- 32.4 MB/s

### Text Transliteration: using sed
* Example: [Îñtèrńätìõnālísåtįòn] => [Internationalisation]
* 70 msec -- 60.1 MB/s

### Text Transliteration: using tr
* Example: [Îñtèrńätìõnālísåtįòn] => [Internationalisation]
* 802 msec -- 5.2 MB/s

## [Lowercase conversion](https://github.com/pforret/bash_benchmarks/blob/main/lowercase.sh)

### Lowercase conversion: using awk
* Example: [UPPER lower Title ÎnTÊrÑatĪÖnÀl] => [upper lower title întêrñatīönàl]
* 190 msec -- 22.1 MB/s

### Lowercase conversion: using sed
* Example: [UPPER lower Title ÎnTÊrÑatĪÖnÀl] => [upper lower title întêrñatīönàl]
* 70 msec -- 60.1 MB/s

### Lowercase conversion: using tr
* Example: [UPPER lower Title ÎnTÊrÑatĪÖnÀl] => [upper lower title întêrñatīönàl]
* 800 msec -- 5.3 MB/s


## [Remove alphanumeric characters]()
### Remove non-alphanumeric chars: using `awk`
* Example: [/Easy like 1-2-3!![]{}()/] => [Easy like 1-2-3]
* 2820 msec -- 1.5 MB/s

### Remove non-alphanumeric chars: using `sed`
* Example: [/Easy like 1-2-3!![]{}()/] => [Easy like 1-2-3]
* 2190 msec -- 1.9 MB/s

### Remove non-alphanumeric chars: using `tr`
* Example: [/Easy like 1-2-3!![]{}()/] => [/Easy like 123[]/]
* 790 msec -- 5.3 MB/s

---
PS: all these times/speeds were measured on _my_ laptop; a Macbook Pro M1 2021 16". 
The absolute speed on your machine for these scripts might be different, 
but the relative speeds of one method (e.g. `sed`) compared to others (e.g. `tr`) remains relevant.

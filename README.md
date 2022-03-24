# BASH BENCHMARKS
Benchmarks to test different methods for string, file, process manipulation, ...

## [Transliteration](https://github.com/pforret/bash_benchmarks/blob/main/transliteration.sh)

> i.e. removing diacritics [îñtërńåtîõnāl] => [international]
> 
> inspired by [stackoverflow.com/questions/10207354/how-to-remove-all-of-the-diacritics-from-a-file](https://stackoverflow.com/questions/10207354/how-to-remove-all-of-the-diacritics-from-a-file)

### Text Transliteration: using tr
* Example: [Îñtèrńätìõnālísåtįòn] => [Internationalisation]
* 802 msec -- 5.2 MB/s

### Text Transliteration: using sed
* Example: [Îñtèrńätìõnālísåtįòn] => [Internationalisation]
* 70 msec -- 60.1 MB/s

### Text Transliteration: using iconv
* Example: [Îñtèrńätìõnālísåtįòn] => [^I~nt`er'n"at`i~onal'isati`on]
* 130 msec -- 32.4 MB/s

### Text Transliteration: using awk
* Example: [Îñtèrńätìõnālísåtįòn] => [Internationalisation]
* 268 msec -- 15.7 MB/s


# Lowercase conversion

### Lowercase conversion: using tr
* Example: [UPPER lower Title ÎnTÊrÑatĪÖnÀl] => [upper lower title întêrñatīönàl]
* 800 msec -- 5.3 MB/s

### Lowercase conversion: using awk
* Example: [UPPER lower Title ÎnTÊrÑatĪÖnÀl] => [upper lower title întêrñatīönàl]
* 190 msec -- 22.1 MB/s

---
PS: all these times/speeds were measured on _my_ laptop; a Macbook Pro M1 2021 16". 
The absolute speed on your machine for these scripts might be different, 
but the relative speeds of one method (e.g. `sed`) compared to others (e.g. `tr`) remains relevant.

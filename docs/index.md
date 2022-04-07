# Bash benchmarks

## [Lower case](lowercase.md)
* **convert text to lower case**
* effect: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT' => 'łorèm îpsùm dôlõr sit amét'
* fastest throughput is `sed`
* fastest invocation is `${line,,}`

## [Upper case](uppercase.md)
* **convert text to upper case**
* effect: 'łorèm îpsùm dôlõr sit amét' => 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT'
* fastest throughput is `sed y/.../.../`
* fastest invocation is `${line^^}`

## [Cut after N chars](chars.md)
* **cut first N chars of every line**
* effect: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit' => 'Lorem ipsum dolor si'
* fastest throughput is `awk '{print substr($0,1,20)}'`
* fastest invocation is `${line:0:20}`

## [Trim spaces](trim.md)
* **remove leading and trailing spaces from lines**
* effect: `'    ( Lorem ipsum dolor sit amet )   '` => `'( Lorem ipsum dolor sit amet )'`
* fastest throughput is `awk '{sub(/^[ \t\r\n]+/, ""); sub(/[ \t\r\n]+$/, ""); print}'`
* fastest invocation is `xargs`

## [Romanize text](romanize.md)
* **convert text to latin/roman script without accents**
* effect: 'ŁORÈM ÎPSÙM dôlõr sit amét' => 'LOREM IPSUM dolor sit amet'
* fastest throughput is `sed 'y/.../.../`
* fastest invocation is `tr '...' '...'`

## [Filter alphanumeric](alpha.md)
* **remove all characters that are not in the range [a-zA-Z0-9 -]**
* effect: '^1-2'3,4,5_6°8@9&0 (one){two}[three]' => '1-23456890 onetwothree'
* fastest throughput is `awk '{gsub(/[^0-9a-zA-Z .-]/,""); print;}'`
* fastest invocation is `tr -cd '0-9a-zA-Z .-'`

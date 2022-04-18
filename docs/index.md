# Bash benchmarks

## [Lower case](lowercase.md)
* **convert text to lower case**
* example: `'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT' => 'łorèm îpsùm dôlõr sit amét'`

## [Upper case](uppercase.md)
* **convert text to upper case**
* example: `'łorèm îpsùm dôlõr sit amét' => 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT'`

## [Cut after N chars](chars.md)
* **cut first N chars of every line**
* example: `'Lorem ipsum dolor sit amet, consectetur adipiscing elit' => 'Lorem ipsum dolor si'`

## [Trim spaces](trim.md)
* **remove leading and trailing spaces from lines**
* example: `'    ( Lorem ipsum dolor sit amet )   '` => `'( Lorem ipsum dolor sit amet )'`

## [Romanize text](romanize.md)
* **convert text to latin/roman script without accents**
* example: `'ŁORÈM ÎPSÙM dôlõr sit amét' => 'LOREM IPSUM dolor sit amet'`

## [Slugify text](slugify.md)
* **remove all characters that are not in the range [a-zA-Z0-9 -]**
* example: `'  (Demain, dès l'aube)     ' => 'Demain-ds-laube'`

## [Just copy](copy.md)
* **remove all characters that are not in the range [a-zA-Z0-9 -]**
* example: `'  (Demain, dès l'aube)     ' => 'Demain-ds-laube'`

## [tr vs gtr](gtr.md)
* **compare speed and behaviour between `tr`and `gtr`**


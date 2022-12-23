# lowercase
 
    run at Fri Dec 23 09:56:42 PM CET 2022
    run on Ubuntu 22.04 x86_64 Linux
    benchmark v0.6.3
 
### Convert text to lowercase: using `awk`
```shell
Command: 'awk {print tolower($0)}'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
### Convert text to lowercase: using `perl`
```shell
Command: 'perl -ne print lc'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
### Convert text to lowercase: using `perl`
```shell
Command: 'perl -CSA -ne use utf8; binmode STDOUT, ":utf8"; print lc'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
### Convert text to lowercase: using `php`
```shell
Command: 'php -r while($f = fgets(STDIN)){ print strtolower($f); }'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
### Convert text to lowercase: using `php`
```shell
Command: 'php -r while($f = fgets(STDIN)){ print mb_strtolower($f); }'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
### Convert text to lowercase: using `sed`
```shell
Command: 'sed -e s/\(.*\)/\L\1/'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : '��or��m ��ps��m d��l��r sit am��t ������'  (LANG = C)
```
* Binary: /usr/bin/sed
* Version: /usr/bin/sed (GNU sed) 4.8
* Throughput speed: `17 MB/sec`
* Invocation speed: 
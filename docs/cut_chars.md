# Cut first 20 chars
 
> run at Sun Mar 27 18:52:31 CEST 2022 on Darwin 21.4.0
 
### Cut first 20 chars: using `awk`
```
Command: 'awk {print substr($0,1,20)}'
Result: '0123456789012345678901234567890123456789' => '01234567890123456789'
```
* 80 msec -- 125.1 MB/s
 
### Cut first 20 chars: using `cut`
```
Command: 'cut -c1-20'
Result: '0123456789012345678901234567890123456789' => '01234567890123456789'
```
* 1040 msec -- 9.6 MB/s
 
### Cut first 20 chars: using `bash`
```
Command: 'bash -c while read line ; do echo ${line:0:20} ; done'
Result: '0123456789012345678901234567890123456789' => '01234567890123456789'
```
* 794 msec -- 12.6 MB/s
 

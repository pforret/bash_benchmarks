# Cut first 5 fields
 
> run at Sun Mar 27 19:02:07 CEST 2022 on Darwin 21.4.0
 
### Cut first 5 fields: using `awk`
```
Command: 'awk {print $1,$2,$3,$4,$5}'
Result: 'f1 : f3 f4 f5 f6 f7' => 'f1 : f3 f4 f5'
```
* 60 msec -- 166.8 MB/s
 
### Cut first 5 fields: using `cut`
```
Command: 'cut -d -f1-5'
Result: 'f1 : f3 f4 f5 f6 f7' => 'f1 : f3 f4 f5'
```
* 574 msec -- 17.4 MB/s
 
### Cut first 5 fields: using `bash`
```
Command: 'bash -c while IFS=" " read -r f1 f2 f3 f4 f5 rest; do echo $...'
Result: 'f1 : f3 f4 f5 f6 f7' => 'f1 : f3 f4 f5'
```
* 2264 msec -- 4.4 MB/s
 

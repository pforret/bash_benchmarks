# chars
 
    run at Fri Dec 23 09:56:28 PM CET 2022
    run on Ubuntu 22.04 x86_64 Linux
    benchmark v0.6.3
 
### cut the first 20 characters of each line: using `awk`
```shell
Command: 'awk {print substr($0,1,20)}'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
### cut the first 20 characters of each line: using `cut`
```shell
Command: 'cut -c1-20'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
### cut the first 20 characters of each line: using `gcut`
```shell
Command: 'gcut -c1-20'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
### cut the first 20 characters of each line: using `${line:0:20}`
```shell
Command: '${line:0:20}'
Before: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
After : 'Lorem ipsum dolor si' (LANG = en_US.UTF-8)
```
* Throughput speed: `21 MB/sec`
* Invocation speed: `6579 ops/sec`


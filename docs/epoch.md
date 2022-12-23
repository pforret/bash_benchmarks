# epoch
 
    run at Fri Dec 23 10:07:54 PM CET 2022
    run on Ubuntu 22.04 x86_64 Linux
    benchmark v0.6.3
 
### unix epoch time with milli/microseconds: using `perl`
```shell
Command: 'perl -MTime::HiRes=time -e printf "%.3f\n", time'
Before: ''
After : '1671829674.107'  (LANG = en_US.UTF-8)
```
* Binary: /usr/bin/perl
* Version: 
* Throughput speed: `2439 MB/sec`
* Invocation speed: `280 ops/sec`

### unix epoch time with milli/microseconds: using `php`
```shell
Command: 'php -r echo microtime(true) . "\n";'
Before: ''
After : '1671829677.759'  (LANG = en_US.UTF-8)
```
* Binary: /usr/bin/php8.2
* Version: PHP 8.2.0 (cli) (built: Dec 10 2022 10:53:01) (NTS)
* Throughput speed: `1176 MB/sec`
* Invocation speed: `127 ops/sec`

### unix epoch time with milli/microseconds: using `python3`
```shell
Command: 'python3 -c import time; print(time.time())'
Before: ''
After : '1671829685.7705696'  (LANG = en_US.UTF-8)
```
* Binary: /usr/bin/python3.10
* Version: Python 3.10.6
* Throughput speed: `1389 MB/sec`
* Invocation speed: `141 ops/sec`

### unix epoch time with milli/microseconds: using `node`
```shell
Command: 'node -e console.log(+new Date() / 1000)'
Before: ''
After : '1671829693.035'  (LANG = en_US.UTF-8)
```
* Binary: /usr/bin/node
* Version: v12.22.9
* Throughput speed: `214 MB/sec`
* Invocation speed: `20 ops/sec`

### unix epoch time with milli/microseconds: using `date`
```shell
Command: 'date +%s.000'
Before: ''
After : '1671829743.000'  (LANG = en_US.UTF-8)
```
* Binary: /usr/bin/date
* Version: date (GNU coreutils) 8.32
* Throughput speed: `8333 MB/sec`
* Invocation speed: `1572 ops/sec`


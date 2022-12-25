# epoch
 
    run at Sat Dec 24 10:01:34 PM CET 2022
    run on Ubuntu 22.04 x86_64 Linux
    benchmark v0.6.4
 
### unix epoch time with milli/microseconds: using `perl`
    (LANG = en_US.UTF-8)
```shell
Command: 'perl -MTime::HiRes=time -e printf "%.3f\n", time'
After : '1671915694.758'
```
* Binary: /usr/bin/perl
* Version: 
* Throughput speed: `2564 MB/sec`
* Invocation speed: `279 ops/sec (3.59 millisec)`

### unix epoch time with milli/microseconds: using `php`
    (LANG = en_US.UTF-8)
```shell
Command: 'php -r echo microtime(true) . "\n";'
After : '1671915698.4222'
```
* Binary: /usr/bin/php8.2
* Version: PHP 8.2.0 (cli) (built: Dec 10 2022 10:53:01) (NTS)
* Throughput speed: `1163 MB/sec`
* Invocation speed: `125 ops/sec (7.98 millisec)`

### unix epoch time with milli/microseconds: using `python3`
    (LANG = en_US.UTF-8)
```shell
Command: 'python3 -c import time; print(time.time())'
After : '1671915706.5482023'
```
* Binary: /usr/bin/python3.10
* Version: Python 3.10.6
* Throughput speed: `1370 MB/sec`
* Invocation speed: `152 ops/sec (6.58 millisec)`

### unix epoch time with milli/microseconds: using `node`
    (LANG = en_US.UTF-8)
```shell
Command: 'node -e console.log(+new Date() / 1000)'
After : '1671915713.284'
```
* Binary: /usr/bin/node
* Version: v12.22.9
* Throughput speed: `218 MB/sec`
* Invocation speed: `20 ops/sec (48.80 millisec)`

### unix epoch time with milli/microseconds: using `ruby`
    (LANG = en_US.UTF-8)
```shell
Command: 'ruby -e STDOUT.puts(Time.now.to_f)'
After : '1671915762.6370661'
```
* Binary: /usr/bin/ruby3.0
* Version: ruby 3.0.2p107 (2021-07-07 revision 0db68f0233) [x86_64-linux-gnu]
* Throughput speed: `119 MB/sec`
* Invocation speed: `30 ops/sec (32.80 millisec)`

### unix epoch time with milli/microseconds: using `golang/microtime`
    (LANG = en_US.UTF-8)
```shell
Command: 'golang/microtime'
After : '1671915796.365730'
```
* Binary: golang/microtime
* Version: 1671915796.417813
* Throughput speed: `420 MB/sec`
* Invocation speed: `45 ops/sec (22.37 millisec)`

### unix epoch time with milli/microseconds: using `date`
    (LANG = en_US.UTF-8)
```shell
Command: 'date +%s.%N'
After : '1671915819.046840462'
```
* Binary: /usr/bin/date
* Version: date (GNU coreutils) 8.32
* Throughput speed: `10000 MB/sec`
* Invocation speed: `1616 ops/sec (0.62 millisec)`


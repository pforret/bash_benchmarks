# epoch
 
    run at Sun Dec 25 18:49:46 CET 2022
    run on macOS 13.0.1 arm64 Darwin
    benchmark v0.6.5
 
### unix epoch time with milli/microseconds: using `perl`
    (LANG = en_US.UTF-8)
```shell
Command: 'perl -MTime::HiRes=time -e printf "%f\n", time'
After : '1671990586.560318'
```
* Binary: /usr/bin/perl
* Version: 
* Throughput speed: `1250 MB/sec`
* Invocation speed: `146 ops/sec (6.85 millisec)`

### unix epoch time with milli/microseconds: using `php`
    (LANG = en_US.UTF-8)
```shell
Command: 'php -r printf("%f\n",microtime(true));'
After : '1671990593.557677'
```
* Binary: /opt/homebrew/Cellar/php/8.1.11/bin/php
* Version: PHP 8.1.11 (cli) (built: Sep 29 2022 19:44:28) (NTS)
* Throughput speed: `474 MB/sec`
* Invocation speed: `50 ops/sec (20.17 millisec)`

### unix epoch time with milli/microseconds: using `python3`
    (LANG = en_US.UTF-8)
```shell
Command: 'python3 -c import time; print(time.time())'
After : '1671990614.045855'
```
* Binary: /opt/homebrew/Cellar/python@3.10/3.10.8/Frameworks/Python.framework/Versions/3.10/bin/python3.10
* Version: Python 3.10.8
* Throughput speed: `543 MB/sec`
* Invocation speed: `57 ops/sec (17.41 millisec)`

### unix epoch time with milli/microseconds: using `node`
    (LANG = en_US.UTF-8)
```shell
Command: 'node -e console.log(+new Date() / 1000)'
After : '1671990631.748'
```
* Binary: /opt/homebrew/Cellar/node/18.11.0/bin/node
* Version: v18.11.0
* Throughput speed: `263 MB/sec`
* Invocation speed: `27 ops/sec (37.49 millisec)`

### unix epoch time with milli/microseconds: using `ruby`
    (LANG = en_US.UTF-8)
```shell
Command: 'ruby -e STDOUT.puts(Time.now.to_f)'
After : '1671990669.741518'
```
* Binary: /opt/homebrew/opt/ruby/bin/ruby
* Version: ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [arm64-darwin21]
* Throughput speed: `282 MB/sec`
* Invocation speed: `29 ops/sec (34.61 millisec)`

### unix epoch time with milli/microseconds: using `golang/microtime`
    (LANG = en_US.UTF-8)
```shell
Command: 'golang/microtime'
After : '1671990705.127582'
```
* Binary: golang/microtime
* Version: 1671990705.142990
* Throughput speed: `3125 MB/sec`
* Invocation speed: `565 ops/sec (1.77 millisec)`

### unix epoch time with milli/microseconds: using `date`
    (LANG = en_US.UTF-8)
```shell
Command: 'date +%s.%N'
After : '1671990706.N'
```
* Binary: /bin/date
* Throughput speed: `4167 MB/sec`
* Invocation speed: `730 ops/sec (1.37 millisec)`


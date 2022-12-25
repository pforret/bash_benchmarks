# epoch
 
    run at Sun Dec 25 19:52:24 CET 2022
    run on macOS 13.0.1 arm64 Darwin
    benchmark v0.6.5
    LANG = en_US.UTF-8
 
### unix epoch time with milli/microseconds: using `perl`
```shell
Command: 'perl -MTime::HiRes=time -e printf "%f\n", time'
After : '1671994344.724015'
```
* Binary: /usr/bin/perl
* Version: 
* Throughput speed: `1190 MB/sec`
* Invocation speed: `145 ops/sec (6.88 millisec)`

### unix epoch time with milli/microseconds: using `php`
```shell
Command: 'php -r printf("%f\n",microtime(true));'
After : '1671994351.757778'
```
* Binary: /opt/homebrew/Cellar/php/8.2.0/bin/php
* Version: PHP 8.2.0 (cli) (built: Dec  9 2022 16:30:32) (NTS)
* Throughput speed: `465 MB/sec`
* Invocation speed: `50 ops/sec (20.11 millisec)`

### unix epoch time with milli/microseconds: using `python3`
```shell
Command: 'python3 -c import time; print(time.time())'
After : '1671994372.20596'
```
* Binary: /opt/homebrew/Cellar/python@3.10/3.10.9/Frameworks/Python.framework/Versions/3.10/bin/python3.10
* Version: Python 3.10.9
* Throughput speed: `549 MB/sec`
* Invocation speed: `56 ops/sec (17.75 millisec)`

### unix epoch time with milli/microseconds: using `node`
```shell
Command: 'node -e console.log(+new Date() / 1000)'
After : '1671994390.244'
```
* Binary: /opt/homebrew/Cellar/node/19.3.0/bin/node
* Version: v19.3.0
* Throughput speed: `309 MB/sec`
* Invocation speed: `32 ops/sec (30.87 millisec)`

### unix epoch time with milli/microseconds: using `ruby`
```shell
Command: 'ruby -e STDOUT.puts(Time.now.to_f)'
After : '1671994421.659426'
```
* Binary: /opt/homebrew/opt/ruby/bin/ruby
* Version: ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [arm64-darwin21]
* Throughput speed: `287 MB/sec`
* Invocation speed: `1 ops/sec (717.48 millisec)`

### unix epoch time with milli/microseconds: using `golang/microtime`
```shell
Command: 'golang/microtime'
After : '1671995139.577231'
```
* Binary: golang/microtime
* Version: 1671995139.583516
* Throughput speed: `3704 MB/sec`
* Invocation speed: `550 ops/sec (1.82 millisec)`

### unix epoch time with milli/microseconds: using `date`
```shell
Command: 'date +%s.%N'
After : '1671995141.N'
```
* Binary: /bin/date
* Throughput speed: `4348 MB/sec`
* Invocation speed: `709 ops/sec (1.41 millisec)`


# epoch
 
    run at Sun Jan  1 16:44:06 CET 2023
    run on macOS 13.0.1 arm64 Darwin
    benchmark v0.6.6
    LANG = en_US.UTF-8
 
### unix epoch time with milli/microseconds: using `perl`
```shell
Command: 'perl -MTime::HiRes=time -e printf "%f\n", time'
After : '1672587846.186535'
```
* Binary: /usr/bin/perl (20K)
* Version: 
* Throughput speed: `1064 MB/sec`
* Invocation speed: `135 ops/sec (7.42 millisec)`

### unix epoch time with milli/microseconds: using `php`
```shell
Command: 'php -r printf("%f\n",microtime(true));'
After : '1672587853.813151'
```
* Binary: /opt/homebrew/Cellar/php/8.2.0/bin/php (15M)
* Version: PHP 8.2.0 (cli) (built: Dec  9 2022 16:30:32) (NTS)
* Throughput speed: `461 MB/sec`
* Invocation speed: `49 ops/sec (20.37 millisec)`

### unix epoch time with milli/microseconds: using `python3`
```shell
Command: 'python3 -c import time; print(time.time())'
After : '1672587874.534977'
```
* Binary: /opt/homebrew/Cellar/python@3.10/3.10.9/Frameworks/Python.framework/Versions/3.10/bin/python3.10 (52K)
* Version: Python 3.10.9
* Throughput speed: `518 MB/sec`
* Invocation speed: `58 ops/sec (17.23 millisec)`

### unix epoch time with milli/microseconds: using `node`
```shell
Command: 'node -e console.log(+new Date() / 1000)'
After : '1672587892.15'
```
* Binary: /opt/homebrew/Cellar/node/19.3.0/bin/node (43M)
* Version: v19.3.0
* Throughput speed: `284 MB/sec`
* Invocation speed: `31 ops/sec (32.06 millisec)`

### unix epoch time with milli/microseconds: using `ruby`
```shell
Command: 'ruby -e STDOUT.puts(Time.now.to_f)'
After : '1672587924.720869'
```
* Binary: /opt/homebrew/opt/ruby/bin/ruby (52K)
* Version: ruby 3.1.3p185 (2022-11-24 revision 1a6b16756e) [arm64-darwin22]
* Throughput speed: `273 MB/sec`
* Invocation speed: `29 ops/sec (34.91 millisec)`

### unix epoch time with milli/microseconds: using `golang/microtime`
```shell
Command: 'golang/microtime'
After : '1672587960.064454'
```
* Binary: golang/microtime (1.4M)
* Version: 1672587960.078065
* Throughput speed: `3448 MB/sec`
* Invocation speed: `575 ops/sec (1.74 millisec)`

### unix epoch time with milli/microseconds: using `gosh`
```shell
Command: 'gosh microtime true'
After : '1672587961.904823'
```
* Binary: /Users/pforret/.basher/cellar/packages/pforret/gosh/bin/gosh-mac (3.7M)
* Throughput speed: `1299 MB/sec`
* Invocation speed: `185 ops/sec (5.42 millisec)`

### unix epoch time with milli/microseconds: using `go`
```shell
Command: 'go run golang/microtime.go'
After : '1672587967.979865'
```
* Binary: /opt/homebrew/Cellar/go/1.19.2/libexec/bin/go (14M)
* Throughput speed: `70 MB/sec`
* Invocation speed: `7 ops/sec (140.61 millisec)`

### unix epoch time with milli/microseconds: using `gdate`
```shell
Command: 'gdate +%s.%N'
After : '1672588110.112090000'
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gdate (144K)
* Version: date (GNU coreutils) 9.1
* Throughput speed: `3333 MB/sec`
* Invocation speed: `590 ops/sec (1.70 millisec)`

### unix epoch time with milli/microseconds: using `date`
```shell
Command: 'date +%s.%N'
After : '1672588111.N'
```
* Binary: /bin/date (24K)
* Throughput speed: `4167 MB/sec`
* Invocation speed: `719 ops/sec (1.39 millisec)`


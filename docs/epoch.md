# epoch
 
    run at Mon Jan  2 21:28:17 CET 2023
    run on macOS 13.0.1 arm64 Darwin
    benchmark v0.6.7
    LANG = en_US.UTF-8
 
### unix epoch time with milli/microseconds: using `perl`
```shell
Command: 'perl -MTime::HiRes=time -e printf "%f\n", time'
After : '1672691297.705011'
```
* Binary: /usr/bin/perl (20K)
* Version: 
* Throughput speed: `1220 MB/sec`
* Invocation speed: `145 ops/sec (6.89 millisec)`

### unix epoch time with milli/microseconds: using `php`
```shell
Command: 'php -r printf("%f\n",microtime(true));'
After : '1672691301.345745'
```
* Binary: /opt/homebrew/Cellar/php/8.2.0/bin/php (15M)
* Version: PHP 8.2.0 (cli) (built: Dec  9 2022 16:30:32) (NTS)
* Throughput speed: `467 MB/sec`
* Invocation speed: `51 ops/sec (19.76 millisec)`

### unix epoch time with milli/microseconds: using `python3`
```shell
Command: 'python3 -c import time; print(time.time())'
After : '1672691311.568062'
```
* Binary: /opt/homebrew/Cellar/python@3.10/3.10.9/Frameworks/Python.framework/Versions/3.10/bin/python3.10 (52K)
* Version: Python 3.10.9
* Throughput speed: `546 MB/sec`
* Invocation speed: `60 ops/sec (16.60 millisec)`

### unix epoch time with milli/microseconds: using `node`
```shell
Command: 'node -e console.log(+new Date() / 1000)'
After : '1672691320.217'
```
* Binary: /opt/homebrew/Cellar/node/19.3.0/bin/node (43M)
* Version: v19.3.0
* Throughput speed: `306 MB/sec`
* Invocation speed: `32 ops/sec (30.87 millisec)`

### unix epoch time with milli/microseconds: using `ruby`
```shell
Command: 'ruby -e STDOUT.puts(Time.now.to_f)'
After : '1672691336.126265'
```
* Binary: /opt/homebrew/opt/ruby/bin/ruby (52K)
* Version: ruby 3.1.3p185 (2022-11-24 revision 1a6b16756e) [arm64-darwin22]
* Throughput speed: `271 MB/sec`
* Invocation speed: `29 ops/sec (34.67 millisec)`

### unix epoch time with milli/microseconds: using `golang/microtime`
```shell
Command: 'golang/microtime'
After : '1672691353.896825'
```
* Binary: golang/microtime (1.4M)
* Version: 1672691353.908873
* Throughput speed: `3226 MB/sec`
* Invocation speed: `564 ops/sec (1.77 millisec)`

### unix epoch time with milli/microseconds: using `gosh`
```shell
Command: 'gosh microtime true'
After : '1672691354.882341'
```
* Binary: /Users/pforret/.basher/cellar/packages/pforret/gosh/bin/gosh-mac (3.7M)
* Throughput speed: `1408 MB/sec`
* Invocation speed: `182 ops/sec (5.48 millisec)`

### unix epoch time with milli/microseconds: using `go`
```shell
Command: 'go run golang/microtime.go'
After : '1672691358.323405'
```
* Binary: /opt/homebrew/Cellar/go/1.19.2/libexec/bin/go (14M)
* Throughput speed: `70 MB/sec`
* Invocation speed: `7 ops/sec (147.94 millisec)`

### unix epoch time with milli/microseconds: using `gdate`
```shell
Command: 'gdate +%s.%N'
After : '1672691433.814392000'
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gdate (144K)
* Version: date (GNU coreutils) 9.1
* Throughput speed: `3571 MB/sec`
* Invocation speed: `592 ops/sec (1.69 millisec)`

### unix epoch time with milli/microseconds: using `date`
```shell
Command: 'date +%s.%N'
After : '1672691434.N'
```
* Binary: /bin/date (24K)
* Throughput speed: `4348 MB/sec`
* Invocation speed: `724 ops/sec (1.38 millisec)`


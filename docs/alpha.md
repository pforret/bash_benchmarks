# alpha
 
> run at Sat Apr 16 15:17:23 CEST 2022 on macOS 12.3 arm64 Darwin (v0.5.9)
 
### remove non-alphanumeric characters: using `${line//[^a-zA-Z0-9]*/-}`
```
Command: '${line//[^a-zA-Z0-9]*/-}'
Before: 'Winter was the first! to? été     [go]'
After : 'Winter-'
```
* Throughput speed: 
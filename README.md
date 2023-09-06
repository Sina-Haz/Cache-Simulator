# Cache Simulator

This cache simulator implements a two-level exclusive cache architecture. It supports both FIFO and LRU cache policies and can simulate direct-mapped, n-way set, or fully associative caches. Here are the instructions to try it out:

First compile the executable using the makefile
```
make cache
```
Run the executable with command-line arugments
```
./cache <L1 cache size><L1 associativity><L1 cache policy><L1 block size>
<L2 cache size><L2 associativity><L2 cache policy><trace file>
```
The trace file is a text file where each line is formatted as such:
```
<R/W> <hexadecimal memory address>
```
Refer to the small example trace file within the repo for more information

Sample execution and output:
```
$./cache 32 assoc:2 fifo 4 64 assoc:16 lru trace2.txt
memread:3277
memwrite:2861
l1cachehit:6501
l1cachemiss:3499
l2cachehit:222
l2cachemiss:3277
```

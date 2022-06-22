## Introduction
PISketch is a sketch algorithm that can find persistent and infrequent flows (PI flows) in data streams. We implement PISketch on both P4 and CPU platforms.
We compare PISketch with two strawman solutions: 1) On-Off + CM sketch; 2) PIE + CM sketch. In the experiments of finding PI flows, for PISketch and On-Off + CM sketch,  we set the memory size range to 100KB-250KB; for PIE + CM sketch, the memory size range is set to 10000KB-25000KB, which is 100 times the one of PISketch. In the APT & FRP preliminary detection experiments, the memory size range of PISketch and On-Off + CM sketch is set to 150KB-300KB, while that of PIE + CM sketch is 15000KB-30000KB. The reason is that the number of PI flows we want is actually small, but PIE + CM requires much more memory to store all the flows, otherwise it cannot work well.     
Our experimental results demonstrate the advantage of PISketch over the two strawman solutions: 1) The F1 Score of PISketch is around 22.1% and 57.6% higher than two strawman solutions, respectively; 2) The Average Relative Error (ARE) of PISketch is around 820.9 (up to 1188.8) and 126.2 (up to 265.6) times lower than the two strawman solutions, respectively; 3) The insertion throughput of PISketch is around 1.23 and 16.5 times higher than the two strawman solutions, respectively. 

## Requirements
g++

## How to run
put datasets into dataset/
``` bash
$ ./work.sh
```
## Files introduction
mrun.cpp:main source cpp file

PISketch.h:PISketch source cpp file

OO_FPI.h,bitset.h,CMSketch.h: On-off source cpp file

pie.h,CMSketch.h: PIE source cpp file

BOBHash32.h,hash_class.h: hash functions

data.h : definition of data

definition.h: definition of variables and parameters

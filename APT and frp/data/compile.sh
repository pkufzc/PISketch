#!/bin/bash
cp mix/formatted01.dat mix/intermediate.dat 
g++ GenSimData.cpp -o GenSimData -std=c++11 -O2
./GenSimData 300 0.5
cp mix/attacklist.dat ../../ATK.dat
cp mix/mix.dat ../../APTMIX.dat

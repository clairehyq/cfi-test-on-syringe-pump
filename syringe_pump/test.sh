#!/bin/bash
rm output.txt
for i in {1..2}
do
    (nice -20 ./syringe && nice -20 ./syringe_cfi) >> output.txt
done

for i in {1..2}
do
    (nice -20 ./syringe_cfi && nice -20 ./syringe) >> output.txt
done

clang++ -o analyze analyze.cpp
./analyze



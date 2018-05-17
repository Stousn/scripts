#!/bin/bash

FILE1=$1
yasm -f elf -g dwarf2 $FILE1.asm; 
gcc $FILE1.o -m32 -nostdlib -o $FILE1; 
./$FILE1 2> stderr.txt;
echo "ERRORS: ";
cat stderr.txt

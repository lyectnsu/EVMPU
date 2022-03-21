#!/bin/bash
g++ -std=c++11 -S -O$3 -fno-asynchronous-unwind-tables -fno-dwarf2-cfi-asm $1 -o $2


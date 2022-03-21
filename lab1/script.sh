#!/bin/bash
progs=(a0.o a1.o a2.o a3.o as.o afast.o ag.o)

params=(
	750000000
	1500000000
	2250000000
	3000000000
	3750000000
	4500000000
	5250000000
	6000000000
)

for pn in "${progs[@]}"
do
	for pr in "${params[@]}"
	do
		echo $pn $pr
		./$pn $pr
	done
done

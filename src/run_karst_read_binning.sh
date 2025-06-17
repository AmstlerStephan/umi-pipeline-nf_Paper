#!/bin/bash

longread_umi umi_binning \
	-d data/fastq/minimal/barcode01/input_100000.fastq \
	-o pipelines/karst/out/umi_binning \
	-s 300 \
	-e 300 \
	-f GTATCGTGTAGAGACTGCGTAGG \
	-F AGAAACAAACCTACTAAACCTGACAG \
	-r AGTGATCGAGTCAGTGCGAGTG \
	-R TTTTTCTGACAATCGGAATATAC \
	-p \
	-u 3 \
	-U 30 \
	-S 6 \
	-t 6 \
	-m 2000 \
	-M 4000 \
	-O 0.2

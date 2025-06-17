#!/bin/bash

# TODO: Adapt paths accrordingly

longread_umi nanopore_pipeline -d data/fastq/minimal/barcode01/input_100000.fastq \
	-o other_pipelines/karst/out/minimal \
	-v 6 \
	-q r1041_e82_400bps_sup_v4.3.0 \
	-m 2000 \
	-M 3500 \
	-f GTATCGTGTAGAGACTGCGTAGG \
	-F AGAAACAAACCTACTAAACCTGACAG \
	-r CACTCGCACTGACTCGATCACT \
	-R GTATATTCCGATTGTCAGAAAAA \
	-s 200 \
	-e 200 \
	-c 2 \
	-p 2 \
	-t 1


#	-r AGTGATCGAGTCAGTGCGAGTG \
#	-R TTTTTCTGACAATCGGAATATAC \

#	-f GTATCGTGTAGAGACTGCGTAGG \
#	-F TTTVVVVTTVVVVTTVVVVTTVVVVTTT \
#	-r CACTCGCACTGACTCGATCACT \
#	-R AAABBBBAABBBBAABBBBAABBBBAAA \

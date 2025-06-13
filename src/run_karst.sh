#!/bin/bash

# TODO: Adapt paths accrordingly

longread_umi nanopore_pipeline -d data/minimal/input_100000.fastq \
	-o other_pipelines/karst/out \
	-v 6 \
	-q r1041_e82_400bps_sup_v4.3.0 \
	-m 5000 \
	-M 6000 \
	-s 200 \
	-e 200 \
	-f GTATCGTGTAGAGACTGCGTAGG \
	-F TTTVVVVTTVVVVTTVVVVTTVVVVTTT \
	-r CACTCGCACTGACTCGATCACT \
	-R AAABBBBAABBBBAABBBBAABBBBAAA \
	-c 2 \
	-p 2 \
	-t 1

#!/bin/bash

INPUT_DIR=$1
OUTPUT_DIR=$2

nextflow run epi2me-labs/wf-metagenomics -latest \
	--fastq $INPUT_DIR \
	--out_dir $OUTPUT_DIR \
	--taxonomic_rank G \
	--database_set SILVA_138_1

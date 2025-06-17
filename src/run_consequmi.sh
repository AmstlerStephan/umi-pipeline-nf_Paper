#!/bin/bash

INPUT_DIR=$1
OUTPUT_DIR=$2
ADAPTER_FILE=$3
UMI_LENGTH=$4
MINIMAL_BIN_SIZE=$5
THREADS=$6
out_dir_umi="$OUTPUT_DIR"_umi_processing
in_dir_cons="$OUTPUT_DIR"_umi_processing_*/bins
out_dir_cons="$OUTPUT_DIR"_umi_consensus

process_umis(){

	conseq umi -i $INPUT_DIR \
		-o $out_dir_umi \
		-a $ADAPTER_FILE \
		-u $UMI_LENGTH

}

create_consensus(){

	conseq cons -i $in_dir_cons -o $out_dir_cons -m $MINIMAL_BIN_SIZE -p $THREADS

}

create_output_dir(){
	mkdir -p $OUTPUT_DIR
}

create_output_dir
process_umis
create_consensus

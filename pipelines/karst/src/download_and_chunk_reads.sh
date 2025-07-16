#!/bin/bash

wget "ftp://ftp.sra.ebi.ac.uk/vol1/run/ERR381/ERR3813594/smkj412_zymo_D6306_rrna_umi_ont_min_r10_g344hac.fq.gz"
gunzip -c smkj412_zymo_D6306_rrna_umi_ont_min_r10_g344hac.fq.gz > reads.fastq
mkdir -p data/single_file/fastq_pass/barcode01
mv reads.fastq data/single_file/fastq_pass/barcode01
seqkit split2 --by-size 300000 --out-dir data/chunked/fastq_pass/barcode01/ data/single_file/fastq_pass/barcode01/reads.fastq

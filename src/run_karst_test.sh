#!/bin/bash

longread_umi nanopore_pipeline \
  -d other_pipelines/karst/longread_umi/test_data/test_reads.fq \
  -v 30 \
  -o other_pipelines/karst/out/test \
  -s 90 \
  -e 90 \
  -m 3500 \
  -M 6000 \
  -f CAAGCAGAAGACGGCATACGAGAT \
  -F AGRGTTYGATYMTGGCTCAG \
  -r AATGATACGGCGACCACCGAGATC \
  -R CGACATCGAGGTGCCAAAC \
  -c 3 \
  -p 1 \
  -q r941_min_high_g330 \
  -t 1

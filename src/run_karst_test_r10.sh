#!/bin/bash

longread_umi nanopore_pipeline \
  -d pipelines/karst/longread_umi/test_data/ont_r10_zymo_rrna.fq \
  -v 25 \
  -o pipelines/karst/out/test_r10 \
  -s 90 \
  -e 90 \
  -m 3500 \
  -M 6000 \
  -f CAAGCAGAAGACGGCATACGAGAT \
  -F AGRGTTYGATYMTGGCTCAG \
  -r AATGATACGGCGACCACCGAGATC \
  -R CGACATCGAGGTGCCAAAC \
  -c 2 \
  -p 2 \
  -q r10_min_high_g340 \
  -t 1 \
  -T 1

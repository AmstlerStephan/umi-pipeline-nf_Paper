#!/bin/bash

nextflow run genepi/umi-pipeline-nf \
	-r reference_based_polishing_karst_context_primer -latest \
	--use_gpu \
	--reference_based_polishing \
	-c config/sarscov2_reference_based_context.config \
	-profile docker \
	-with-docker quay.io/genepi/umi-pipeline-nf:vtest_karst

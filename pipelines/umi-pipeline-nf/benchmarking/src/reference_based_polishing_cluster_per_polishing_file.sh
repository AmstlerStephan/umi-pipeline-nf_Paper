#!/bin/bash

clusters_per_file=(10 20 50)
reads_per_cluster=(20 30 50)

for clusters in "${clusters_per_file[@]}"; do
	echo $clusters
	for read_number in "${reads_per_cluster[@]}"; do
		echo $read_number

		nextflow run genepi/umi-pipeline-nf \
			-r reference_based_polishing_context_primer -latest \
			--reference_based_polishing \
			--use_gpu \
			--clusters_per_polishing_file "${clusters}" \
			--max_reads_per_cluster "${read_number}" \
			-c config/reference_based_polishing_cluster_per_polishing_file.config \
			-profile docker \
			-with-docker genepi/umi-pipeline-nfv1.0.0:latest

		nextflow clean -q -f
	done
done

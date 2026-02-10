#!/bin/bash

clusters_per_file=(10 20 50)
reads_per_cluster=(20 30 50)

for clusters in "${clusters_per_file[@]}"; do
	echo $clusters
	for read_number in "${reads_per_cluster[@]}"; do
		echo $read_number

		nextflow run genepi/umi-pipeline-nf \
			-r v1.0.1 -latest \
			--use_gpu \
			--clusters_per_polishing_file "${clusters}" \
			--max_reads_per_cluster "${read_number}" \
			-c config/poa_based_polishing_cluster_per_polishing_file.config \
			-profile docker

		nextflow clean -q -f
	done
done

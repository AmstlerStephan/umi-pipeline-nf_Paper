#!/bin/bash

nextflow run genepi/umi-pipeline-nf \
	-r v1.0.1 -latest \
	-c config/reference_based.config \
	-profile docker

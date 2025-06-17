#!/bin/bash

nextflow run genepi/umi-pipeline-nf \
	-r main -latest \
	-c config/minimal.config \
	-with-docker genepi/umi-pipeline-nfv1.0.0:latest

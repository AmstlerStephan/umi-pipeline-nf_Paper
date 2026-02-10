#!/bin/bash

snakemake -j 20 -pr --configfile config/pipeline-umi-amplicon_config.yml --use-singularity

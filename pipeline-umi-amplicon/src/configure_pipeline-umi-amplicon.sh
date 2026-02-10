#!/bin/bash

# Get pipeline
git clone https://github.com/nanoporetech/pipeline-umi-amplicon.git
# Change to directory
cd pipeline-umi-amplicon
# build docker
docker build -t pipeline-umi-amplicon:latest .
# build singularity
singularity build pipeline-umi-amplicon.sif docker-daemon://pipeline-umi-amplicon:latest


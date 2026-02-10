#!/bin/bash

for polishing_dir in out/polishing/*; do
	polishing=$(basename $polishing_dir)
	for mode_dir in $polishing_dir/*; do
		mode=$(basename $mode_dir)
		for context_dir in $mode_dir/*; do
			context=$(basename $context_dir)
			outdir=out/nextflow_stats/"${polishing}"/"${mode}"/"${context}"
			mkdir -p $outdir
			cp -r $context_dir/nextflow_stats $outdir
		done
	done
done


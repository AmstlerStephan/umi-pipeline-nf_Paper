#!/bin/bash

for polishing_dir in out/polishing/*; do
	polishing=$(basename $polishing_dir)
	for mode_dir in $polishing_dir/*; do
		mode=$(basename $mode_dir)
		for context_dir in $mode_dir/*; do
			context=$(basename $context_dir)
			outdir=out/mutserve/"${polishing}"/"${mode}"/"${context}"
			mkdir -p $outdir
			cp -r $context_dir/mutserve/barcode02/lpa5104/consensus/consensus_parsed.txt $outdir
		done
	done
done


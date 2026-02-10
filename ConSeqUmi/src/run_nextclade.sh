#!/bin/bash

for barcode in barcode0*; do
	echo $barcode
	mkdir -p output/$barcode
	docker run -it --rm \
		--volume="$(pwd):/data/" \
		--user="$(id -u):$(id -g)" \
		nextstrain/nextclade nextclade run \
		--dataset-name="sars-cov-2" \
		--output-all="/data/output/$barcode" \
		"data/$barcode/${barcode}_merged.fasta"
done

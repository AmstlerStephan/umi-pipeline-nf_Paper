# umi-pipeline-nf: A GPU-accelerated, modular and scalable workflow for UMI-tagged nanopore amplicon analysis with real-time sequencing integration

This repository contains all scripts, configuration files, and benchmarking resources used in the study:

**"umi-pipeline-nf: A GPU-accelerated, modular and scalable workflow for UMI-tagged nanopore amplicon analysis with real-time sequencing integration"**

---

## 📁 Repository Structure

```
pipelines/
├── umi-pipeline-nf/
│   └── benchmarking/           # Scripts, configs, and commands for HG00653 sample analysis
├── karst/                      # Scripts for benchmarking against longread_umi using Zymo data
└── consequmi/                  # Scripts for benchmarking against ConSeqUMI using SARS-CoV-2 data
```

---

## 🧬 HG00653 Dataset (1000 Genomes Project)

- **Sample:** HG00653 (from MGP00017 DNA panel)
- **Basecalling:** `dorado` with model `400_dna_r10.4.1_e8.2_400bps_sup@v4.3.0`
- **Pipeline:** `umi-pipeline-nf` in both POA- and reference-based configurations (GPU-mode)
- **Scripts Location:**  
  [`pipelines/umi-pipeline-nf/benchmarking`](https://github.com/AmstlerStephan/umi-pipeline-nf_Paper/tree/main/pipelines/umi-pipeline-nf/benchmarking)

---

## 🦠 ZymoBIOMICS Dataset (Benchmarking Against longread_umi)

- **Data:** UMI-tagged ONT reads of ZymoBIOMICS microbial community (MinION R10 flowcell)
- **Basecalling:** `guppy v3.4.4` (HAC model)
- **Preprocessing:** FASTQ splitting using `seqkit v2.10.0`
- **Pipeline:** `umi-pipeline-nf` in POA-based and reference-based GPU-mode
- **Scripts Location:**  
  [`pipelines/karst`](https://github.com/AmstlerStephan/umi-pipeline-nf_Paper/tree/main/pipelines/karst)

---

## 🧫 SARS-CoV-2 Dataset (Benchmarking Against ConSeqUMI)

- **Data:** UMI-tagged SARS-CoV-2 patient genomes  
  **Source:** NCBI GEO [GSE288938](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE288938)
- **Pipeline:** `umi-pipeline-nf` in reference-based GPU-mode
- **Consensus Analysis:** `Nextclade docker v3.15.3`
- **Comparison Data:** Extracted from ConSeqUMI preprint
- **Scripts Location:**  
  [`pipelines/consequmi`](https://github.com/AmstlerStephan/umi-pipeline-nf_Paper/tree/main/pipelines/consequmi)

---

## 📊 Post-processing & Plotting

- **Software:**  
  - `R 4.4.0`  
  - `tidyverse 2.0.0`  
- **Includes:** Benchmarking tables, consensus quality plots, variant stats

---

## 📦 Requirements

Some scripts require the following tools installed in your environment:

- `seqkit >= v2.10.0`
- `Nextflow >= 22.10`
- `R >= 4.4.0`
- `Docker` or `Singularity`
- `Nextclade >= v3.15.3`
- [`umi-pipeline-nf`](https://github.com/AmstlerStephan/umi-pipeline-nf)

---

## 📄 Citation

If you use this repository or our pipeline configurations in your research, please cite our paper:

> Amstler, S. et al. (2025). *umi-pipeline-nf: A GPU-accelerated, modular and scalable workflow for UMI-tagged nanopore amplicon analysis with real-time sequencing integration.*

---

## 🧑‍💻 Contact

For questions or issues, please contact [Stephan Amstler](https://github.com/AmstlerStephan) or open an issue in the repository.

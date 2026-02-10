# Umi-pipeline-nf: A modular and scalable workflow for UMI-tagged nanopore amplicon analysis with real-time sequencing integration and GPU-acceleration

This repository contains all scripts, configuration files, and benchmarking resources used in the study:

**"Umi-pipeline-nf: A modular and scalable workflow for UMI-tagged nanopore amplicon analysis with real-time sequencing integration and GPU-acceleration
"**

---

## 📁 Repository Structure

```
├── ConSeqUmi
├── Karst
├── benchmarking
├── early_stopping
├── live
├── main_figure
├── pipeline-umi-amplicon
├── scalability
├── src
```

---

## 🧬 HG00653 Dataset (1000 Genomes Project)

- **Sample:** HG00653 (from MGP00017 DNA panel)
- **Raw reads:** The raw reads are available in the ENA database under accession [PRJEB73509](https://www.ebi.ac.uk/ena/browser/view/PRJEB73509).
- **Basecalling:** `dorado` with model `400_dna_r10.4.1_e8.2_400bps_sup@v4.3.0`
- **Pipeline:** `umi-pipeline-nf` in both POA- and reference-based configurations (GPU-mode)
- **Scripts Location:**
  [`benchmarking`](https://github.com/AmstlerStephan/umi-pipeline-nf_Paper/tree/main/benchmarking)
- The same sample was used for benchmarking against pipeline-umi-amplicon: [`pipelines/pipeline-umi-amplicon`](https://github.com/AmstlerStephan/umi-pipeline-nf_Paper/tree/main/pipeline-umi-amplicon)

---

## 🧬 Scalability (1000 Genomes Project)

- **Samples:** Up to 96 samples from diverse populations
- **Raw reads:** The raw reads are available in the ENA database under accession [PRJEB73509](https://www.ebi.ac.uk/ena/browser/view/PRJEB73509).
- **Basecalling:** `dorado` with model `400_dna_r10.4.1_e8.2_400bps_sup@v4.3.0`
- **Pipeline:** `umi-pipeline-nf` in both POA- and reference-based configurations (GPU-mode)
- **Scripts Location:**
  [`scalability`](https://github.com/AmstlerStephan/umi-pipeline-nf_Paper/tree/main/scalability)

---

## 🧬 Live UMI Cluster Monitoring Experiment

**Samples:** 8 samples selected from the scalability experiment
**Raw reads:** The raw reads are available in the ENA database under accession [PRJEB73509](https://www.ebi.ac.uk/ena/browser/view/PRJEB73509).
**Basecalling:** dorado with model 400_dna_r10.4.1_e8.2_400bps_sup@v4.3.0
**Pipeline:** umi-pipeline-nf in real-time monitoring mode
**Scripts Location:**
[live](https://github.com/AmstlerStephan/umi-pipeline-nf_Paper/tree/main/live)

---

## 🧬 Early Stopping Experiment

- **Samples:** 8 samples selected from the scalability experiment
- **Raw reads:** The raw reads are available in the ENA database under accession [PRJEB73509](https://www.ebi.ac.uk/ena/browser/view/PRJEB73509).
- **Basecalling:** dorado with model 400_dna_r10.4.1_e8.2_400bps_sup@v4.3.0
- **Pipeline:** umi-pipeline-nf with early stopping criteria applied
- **Scripts Location:**
  [early_stopping](https://github.com/AmstlerStephan/umi-pipeline-nf_Paper/tree/main/early_stopping)

---

## 🦠 ZymoBIOMICS Dataset (Benchmarking Against longread_umi)

- **Data:** UMI-tagged ONT reads of ZymoBIOMICS microbial community (MinION R10 flowcell)
- **Data Download:** ENA database [ERR3813594](https://www.ebi.ac.uk/ena/browser/view/ERR3813594)
- **Basecalling:** `guppy v3.4.4` (HAC model)
- **Preprocessing:** FASTQ splitting using `seqkit v2.10.0`
- **Pipeline:** `umi-pipeline-nf` in POA-based and reference-based GPU-mode
- **Scripts Location:**
  [`Karst`](https://github.com/AmstlerStephan/umi-pipeline-nf_Paper/tree/main/Karst)

---

## 🧫 SARS-CoV-2 Dataset (Benchmarking Against ConSeqUMI)

- **Data:** UMI-tagged SARS-CoV-2 patient genomes
  **Source:** NCBI GEO [GSE288938](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE288938)
- **Pipeline:** `umi-pipeline-nf` in reference-based GPU-mode
- **Consensus Analysis:** `Nextclade docker v3.15.3`
- **Comparison Data:** Extracted from ConSeqUMI preprint
- **Scripts Location:**
  [`ConSeqUmi`](https://github.com/AmstlerStephan/umi-pipeline-nf_Paper/tree/main/ConSeqUmi)

---

## Src

- Contains all scripts to reproduce the figures and tables from the manuscript

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

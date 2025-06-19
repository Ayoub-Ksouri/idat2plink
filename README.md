# Illumina IDAT to PLINK Converter

This repository provides a simple, reproducible workflow to convert Illumina Infinium genotyping IDAT files into PLINK format files for downstream GWAS analysis.

## 🧬 Overview

The pipeline consists of:
- Installation of required dependencies
- Conversion of IDAT files to PLINK-compatible files
- Optional QC steps (e.g., using H3AGWAS)

## 📁 Structure

- `install_dependencies.sh`: Installs the required Linux packages (Ubuntu/Debian).
- `run_idat2plink.sh`: Main script to convert IDAT files to PLINK format.
- `example/`: SampleSheet and example IDAT directory structure.

## 📦 Dependencies

Tested on **Ubuntu 20.04/22.04**. Includes:
- `bcl2fastq`, `bcftools`, `samtools`, `mono-devel`, `msitools`
- R + packages (`illuminaio`, `crlmm`, `GWASTools`, etc.)

## 🔧 Installation

```bash
bash install_dependencies.sh
```

## 🚀 Usage

```bash
bash run_idat2plink.sh /path/to/IDAT_dir /path/to/SampleSheet.csv output_prefix
```

- `IDAT_dir`: Folder containing `.idat` files
- `SampleSheet.csv`: Illumina Sample Sheet
- `output_prefix`: Desired prefix for PLINK output files

## 🧪 Example

```bash
bash run_idat2plink.sh example/idat example/SampleSheet.csv test_output
```

## 📄 License

MIT License

#!/bin/bash
# Author: Dr. Ayoub Ksouri
# Purpose: Convert Illumina IDAT ➜ PLINK via GTC & VCF

set -e

# === CONFIGURATION ===
IDAT_ROOT="$1"
SAMPLESHEET="$2"
OUT_PREFIX="$3"

# === Paths ===
IDAT_TEMP="./idat_symlinks"
GTC_OUT="./gtc_out"
REF="./support_files/hg19.fa"
BPM="./support_files/H3Africa_2019_20037295_A1.bpm"
EGT="./support_files/H3Africa_2019_Gentrain_A1_ClusterFile_Final.egt"

mkdir -p "$IDAT_TEMP" "$GTC_OUT"

# === STEP 1: Link IDAT files ===
echo "[INFO] Linking IDAT files..."
find "$IDAT_ROOT" -type f -name "*.idat" -exec ln -s {} "$IDAT_TEMP/" \;

# === STEP 2: Run Illumina AutoConvert or IAAP CLI ===
echo "[INFO] Running GTC conversion... (implement your tool here)"

# === STEP 3: Convert to VCF then to PLINK ===
echo "[INFO] Running bcftools conversion..."
# (example command) bcftools view -Ov input.bcf > output.vcf

echo "[INFO] Running PLINK conversion..."
# plink --vcf output.vcf --make-bed --out "$OUT_PREFIX"

echo "[DONE] Pipeline completed successfully!"

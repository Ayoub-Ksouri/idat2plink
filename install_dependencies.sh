#!/bin/bash

set -e
set -o pipefail

echo "[INFO] Updating and installing system dependencies..."

sudo apt update && sudo apt install -y \
  wget unzip git g++ zlib1g-dev bwa samtools \
  msitools cabextract mono-devel libgdiplus icu-devtools \
  bcftools libbz2-dev libssl-dev liblzma-dev libgsl0-dev

echo "[INFO] Installing BCFtools v1.20..."
cd /tmp
wget -q http://github.com/samtools/bcftools/releases/download/1.20/bcftools-1.20.tar.bz2
tar xjf bcftools-1.20.tar.bz2
cd bcftools-1.20
make
cp bcftools "$HOME/bin/"
echo "[DONE] BCFtools installed in \$HOME/bin"

mkdir -p "$HOME/GRCh37" "$HOME/GRCh38"

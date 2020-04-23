#!/bin/sh
#SBATCH --job-name=Cd111
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=60:00:00
#SBATCH --mem=50G
#SBATCH --error=Cd111.err
#SBATCH --output=Cd111.out
#SBATCH --licenses=common
#SBATCH --partition=jclarke
GEMMA -bfile /common/jyanglab/zhikaiyang/projects/mediation-analysis/largedata/geno_282/allchr_bisnp_n282_snpid_maf01_geno2 -k Centered_IBS_kinship_GEMMA.txt -c PCA.txt -p mineral_ziegler_GEMMA.txt -lmm 4 -n 20 -o Cd111 -miss 0.9 -r2 1 -hwe 0 -maf 0.01
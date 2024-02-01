#!/bin/env bash
#SBATCH --partition=debug-gpu
#SBATCH --time=08:00:00
#SBATCH --gpus=2
#SBATCH --output=kraken-%j.out
#SBATCH --mem=24GB
#SBATCH --ntasks=12
#SBATCH --gres=gpu:2,VramPerGpu:24GB

module load fosscuda/2020b Python/3.8.6

echo "KETOS training"
srun ketos train -f alto -i Gallicorpora+_best.mlmodel --resize add -f alto -d cuda:0 -r 0.0001 --lag 10  --workers 12 --normalization NFD data/*/*.xml

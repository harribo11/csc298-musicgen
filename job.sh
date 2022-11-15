#!/bin/bash
#SBATCH --partition=gpu --time=00:30:00  --output=./out/run.log 
#SBATCH --mem=100G --gres=gpu:2 -C A100 -c 20
hostname
date
source /software/miniconda3/4.12.0/bin/activate CSC298-final
python3 system.py
python3 train.py --autoencoder --saveTo checkpoints/test-autoencoder.pt
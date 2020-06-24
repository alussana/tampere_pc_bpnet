#!/bin/bash
#
#SBATCH -J contrib_scores
#
#SBATCH --output=XXX_DYNAMIC_MODEL_DIR_XXX/slurm_logs/%x_%j.txt
#SBATCH --error=XXX_DYNAMIC_MODEL_DIR_XXX/slurm_errors/%x_%j.txt
#
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=10
#
# time format hours:minutes:seconds or days-hours
#SBATCH --time=3:59:59
#SBATCH --mem=40000
#SBATCH --partition=parallel

source ../../miniconda3/bin/activate ../../miniconda3/envs/bpnet_training

bpnet contrib XXX_DYNAMIC_MODEL_DIR_XXX --method=deeplift --overwrite --shuffle-seq --max-regions 5000 --contrib-wildcard='*/profile/wn' XXX_DYNAMIC_MODEL_DIR_XXX/contrib.deeplift.h5
bpnet contrib XXX_DYNAMIC_MODEL_DIR_XXX --method=deeplift --overwrite --shuffle-seq --max-regions 5000 --contrib-wildcard='*/profile/wn' XXX_DYNAMIC_MODEL_DIR_XXX/contrib.deeplift.null.h5

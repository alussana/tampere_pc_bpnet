#!/bin/bash
#
#SBATCH -J plot_contrib_scores
#
#SBATCH --output=XXX_DYNAMIC_MODEL_DIR_XXX/slurm_logs/%x_%j.txt
#SBATCH --error=XXX_DYNAMIC_MODEL_DIR_XXX/slurm_errors/%x_%j.txt
#
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#
# time format hours:minutes:seconds or days-hours
#SBATCH --time=3:59:59
#SBATCH --mem=10000
#SBATCH --partition=test

## MODEL_DIR is the name of the directory in which the contribution scores (.h5) live
MODEL_DIR=XXX_DYNAMIC_MODEL_DIR_XXX

SEQ_LENGTH=XXX_DYNAMIC_SEQ_LENGTH_XXX

source /lustre/bmt-data/genomics/projects/lussana/miniconda3/bin/activate bpnet_training

python ../local/src/plot_contrib_scores.py $MODEL_DIR $SEQ_LENGTH $TASK_LIST

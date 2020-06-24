#!/bin/bash
#
#SBATCH -J train
#
#SBATCH --output=XXX_DYNAMIC_EXP_DIR_XXX/slurm_logs/%x_%j.log
#SBATCH --error=XXX_DYNAMIC_EXP_DIR_XXX/slurm_errors/%x_%j.log
#
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=10
#
# time format hours:minutes:seconds or days-hours
#SBATCH --time=7:59:59
#SBATCH --mem=20000
#SBATCH --partition=normal

EXP_DIR=XXX_DYNAMIC_EXP_DIR_XXX
DATASPEC=XXX_DYNAMIC_DATASPEC_XXX

source /lustre/bmt-data/genomics/projects/lussana/miniconda3/bin/activate bpnet_model_training

python ../local/src/train_nogin.py \
    $EXP_DIR \
    $DATASPEC \
    $SLURM_JOBID \

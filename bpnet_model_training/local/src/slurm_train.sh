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
#SBATCH --time=13:59:59
#SBATCH --mem=25000
#SBATCH --partition=parallel

EXP_DIR=XXX_DYNAMIC_EXP_DIR_XXX
DATASPEC=XXX_DYNAMIC_DATASPEC_XXX
CONFIGGIN=XXX_DYNAMIC_CONFIGGIN_XXX
TASKS=XXX_DYNAMIC_TASKS_XXX
SAMPLE=XXX_DYNAMIC_SAMPLE_XXX

source ../../miniconda3/bin/activate ../../miniconda3/envs/bpnet_training
python ../local/src/train.py \
    $EXP_DIR \
    $DATASPEC \
    $CONFIGGIN \
    $SLURM_JOBID \
    $SAMPLE \
    $TASKS

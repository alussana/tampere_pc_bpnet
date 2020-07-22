#!/bin/bash
#
#SBATCH -J toy
#
#SBATCH --output=XXX_DYNAMIC_EXP_DIR_XXX/slurm_logs/%x_%j.log
#SBATCH --error=XXX_DYNAMIC_EXP_DIR_XXX/slurm_errors/%x_%j.log
#
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#
# time format hours:minutes:seconds or days-hours
#SBATCH --time=3:59:59
#SBATCH --mem=25000
#SBATCH --partition=test

EXP_DIR=XXX_DYNAMIC_EXP_DIR_XXX
DATASPEC=XXX_DYNAMIC_DATASPEC_XXX
CONFIGGIN=XXX_DYNAMIC_CONFIGGIN_XXX
TASKS=XXX_DYNAMIC_TASKS_XXX
SAMPLE=XXX_DYNAMIC_SAMPLE_XXX

source ../../miniconda3/bin/activate ../../miniconda3/envs/bpnet_training
python ../local/src/train_test.py \
    $EXP_DIR \
    $DATASPEC \
    $CONFIGGIN \
    $SLURM_JOBID \
    $SAMPLE \
    $TASKS
